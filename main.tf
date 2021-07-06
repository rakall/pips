data "azurerm_resource_group" "rsg" {
  name = var.resource_group
}

provider "azurerm" {
  version = "=2.0.0"
  features {}
}

locals {
  pip_names = var.ip_prefix_assignment[*].pip_name
}

data "azurerm_client_config" "current" {
  
}

data "azurerm_public_ip_prefix" "public_ip_prefix" {
  for_each = toset(compact(var.ip_prefix_assignment[*].prefix_name))

  name                = each.key
  resource_group_name = var.resource_group

  depends_on = [var.module_depends_on]
}

resource "azurerm_public_ip" "pip" {
  count               = length(local.pip_names)
  name                = local.pip_names[count.index]
  location            = var.location
  resource_group_name = var.resource_group
  sku                 = var.sku
  allocation_method   = var.allocation_method
  public_ip_prefix_id = var.ip_prefix_assignment[count.index].prefix_name == "" ? null : "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${var.resource_group}/providers/Microsoft.Network/publicIPPrefixes/${var.ip_prefix_assignment[count.index].prefix_name}"
  depends_on = [data.azurerm_resource_group.rsg, data.azurerm_public_ip_prefix.public_ip_prefix, var.module_depends_on]
}
