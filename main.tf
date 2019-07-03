resource "azurerm_resource_group" "lab2" {
  name     = "${var.rg}"
  location = "${var.loc}"
  tags     = "${var.tags}"
}

resource "random_string" "rnd" {
  length  = 8
  lower   = true
  number  = true
  upper   = false
  special = false
}

resource "azurerm_storage_account" "lab2sa" {
  name                     = "sa${var.tags["source"]}${random_string.rnd.result}"
  resource_group_name      = "${azurerm_resource_group.lab2.name}"
  location                 = "${azurerm_resource_group.lab2.location}"
  tags                     = "${azurerm_resource_group.lab2.tags}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}