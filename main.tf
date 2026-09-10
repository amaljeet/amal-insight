terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.4.0"
    }
  }
terraform {
  backend "azurerm" {
    resource_group_name  = "bala_rg"
    storage_account_name = "balastorage1"
    container_name       = "balacontainer"
    key                  = "terraform.tfstate"
  }
}


}
provider "azurerm" {
  features {
  }
}
resource "azurerm_resource_group" "test" {
name = "amal-pord-02"
location = "centralindia"
}
