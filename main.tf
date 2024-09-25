terraform {
  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "test1se"
    container_name       = "test1"
    key                  = "terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}
