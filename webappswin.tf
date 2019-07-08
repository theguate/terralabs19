resource "azurerm_resource_group" "webappswin" {
    name        = "webappswin"
    location    = "${var.loc}"
    tags        = "${var.tags}"
}

resource "random_string" "webapprndwin" {
  length  = 8
  lower   = true
  number  = true
  upper   = false
  special = false
}

resource "azurerm_app_service_plan" "freewin" {
    count               = "${length(var.webapplocs)}"
    name                = "plan-free-win${var.webapplocs[count.index]}"
    location            = "${var.webapplocs[count.index]}"
    resource_group_name = "${azurerm_resource_group.webappswin.name}"
    tags                = "${azurerm_resource_group.webappswin.tags}"
    kind                = "Windows"
    sku {
      tier = "Free"
      size = "F1"
    }
}

resource "azurerm_app_service" "citadelwin" {
    count               = "${length(var.webapplocs)}"
    name                = "webappwin-${random_string.webapprndwin.result}-${var.webapplocs[count.index]}"
    location            = "${var.webapplocs[count.index]}"
    resource_group_name = "${azurerm_resource_group.webappswin.name}"
    tags                = "${azurerm_resource_group.webappswin.tags}"

    app_service_plan_id = "${element(azurerm_app_service_plan.free.*.id, count.index)}"
}

output "webappswin_ids" {
  value = "${azurerm_app_service.citadel.*.id}"
}