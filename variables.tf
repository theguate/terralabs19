variable "loc" {
    description = "Default Azure region"
    default     =   "westeurope"
}

variable "tags" {
    default     = {
        source  = "var-javier"
        env     = "var-tag"
    }
}

variable "webapplocs" {
    description = "List of locations for web apps"
    type        = "list"
    default     = []
}