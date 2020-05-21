variable "resource_tags" {
  type = "map"

  default = {
    Application            = "DIY"
    Asset-Compliance-Class = "NA"
    Business-Criticality   = "NA"
    Cost-Code              = "1"
    Created-By             = "Christopher Hayles"
    Department             = "Cloud"
    Environment            = "Production Consumer"
    Owner                  = ""
  }
}
