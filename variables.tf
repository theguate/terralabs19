variable "loc" {
    description = "Default Azure region"
    default     =   "westeurope"
}

variable "tags" {
    default     = {
        source  = "javier-tags"
        env     = "training"
    }
}
escription = "Object ID for the terraformKeyVaultReader service principal"

variable "webapplocs" {
    description = "List of locations for web apps"
    type        = "list"
    default     = []
}