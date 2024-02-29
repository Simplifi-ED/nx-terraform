module "rg" {
  source   = "../../../modules/rg/src"
  name     = "prod"
  location = "westeurope"
  tags = {
    "Project" : "Demo",
    "Owner" : "Team Platform"
  }
}

module "vm" {
  source   = "../../../modules/vm/src"
  name     = "vm"
  location = module.rg.rg.location
  # tags = module.rg.rg.tags
  # rgname = 
  # size
  # admin_username
  # network_interface_ids
}
