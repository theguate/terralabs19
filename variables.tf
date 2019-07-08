variable "loc" {
    description = "Default Azure region"
    default     =   "westeurope"
}

variable "tags" {
    default     = {
        source  = "javierterra-tags"
        env     = "terra-tags"
    }
}

variable "webapplocs" {
    description = "List of locations for web apps"
    type        = "list"
    default     = []
}