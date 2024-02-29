module "rg" {
  source   = "../../../modules/rg/src"
  name     = "dev"
  location = "westeurope"
  tags = {
    "Project" : "Demo",
    "Owner" : "Team Platform"
  }

}
