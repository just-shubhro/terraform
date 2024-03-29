terraform {
    backend "azurerm" {
    resource_group_name   = "rg-shubhro-ind"
    storage_account_name  = "shubhro12"
    container_name        = "tfstate"
    key = "provide-testing"

}
  required_providers {
    azurerm = {
      # Specify what version of the provider we are going to utilise
      source = "hashicorp/azurerm"
      version = ">= 2.4.1"
    }
  }
}
# Create our Virtual Network - Jonnychipz-VNET
resource "azurerm_virtual_network" "vnet" {
  name                = "jonnychipzvnet"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "rg-shubhro-ind"
}
