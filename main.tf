 ## The configuration for the `remote` backend.
     terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "emmafoxorg"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "emmaapi"
         }
       }
     }


# 3. Create a resource group
resource "azurerm_resource_group" "qqqexample" {
  name     = "qqqqexample-resources"
  location = "West Europe"
}

# 4. Create a virtual network within the resource group
resource "azurerm_virtual_network" "qqqexample" {
  name                = "qqqqexample-network"
  resource_group_name = azurerm_resource_group.qqqexample.name
  location            = azurerm_resource_group.qqqexample.location
  address_space       = ["10.0.0.0/16"]
}
