module "config" {
  source    = "git::https://path/to/repo/Terraform?ref=master"
  workspace = "${terraform.workspace}"
}
