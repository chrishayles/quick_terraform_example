# Backend StateFile Blob
terraform {
  backend "azurerm" {
    storage_account_name = "terraformabcdefg"
    container_name = "statefiles"
    key            = "NETWORK-TCX-"
  }
}