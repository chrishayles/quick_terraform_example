provider "azurerm" {}

locals {
  identifier  = "${terraform.workspace}"
  environment = "${module.config.environments}"
  location    = "${local.environment["location"]}"

  tags = "${merge(
    var.resource_tags,
    map("Environment", "${local.identifier}")
  )}"
}

data "azurerm_virtual_network" "shared_services" {
  name                = "${local.environment["network_vnet"]}"
  resource_group_name = "${local.environment["network_rsg"]}"
}

data "azurerm_route_table" "ss_internet_egress" {
  name                = "${local.identifier}INTRTT01"
  resource_group_name = "${local.environment["network_rsg"]}"
}

# NETWORK APPLICATION CONFIGURATION

# SUBNET TCX_APP_GW
resource "azurerm_subnet" "TCX_01_APP_GW" {
  name                 = "${local.identifier}TCXSUB01G"
  resource_group_name  = "${local.environment["network_rsg"]}"
  virtual_network_name = "${data.azurerm_virtual_network.shared_services.name}"
  address_prefix       = "${local.environment["tcx_subnet_01_app_gw"]}"
}

resource "azurerm_subnet" "TCX_02_APP_GW" {
  name                 = "${local.identifier}TCXSUB02G"
  resource_group_name  = "${local.environment["network_rsg"]}"
  virtual_network_name = "${data.azurerm_virtual_network.shared_services.name}"
  address_prefix       = "${local.environment["tcx_subnet_02_app_gw"]}"
}

resource "azurerm_subnet" "TCX_03_APP_GW" {
  name                 = "${local.identifier}TCXSUB03G"
  resource_group_name  = "${local.environment["network_rsg"]}"
  virtual_network_name = "${data.azurerm_virtual_network.shared_services.name}"
  address_prefix       = "${local.environment["tcx_subnet_03_app_gw"]}"
}