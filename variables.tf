variable "location" {
  description = <<EOT
The Azure Region where the Resource Group should exist.
Changing this forces a new Resource Group to be created.
EOT
  type        = string
}

variable "access_key" {}

variable "name" {
  description = <<EOT
The Name which should be used for this Resource Group.
Changing this forces a new Resource Group to be created.
EOT
  type        = string
}

# variable "environment" {
#   description = "Project environment"
#   type        = string
# }

variable "data_factory_name" {
  description = "Name of the data factory"
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type        = map(string)
  default     = {}
}

# variable "tenant_id" {
#   description = "A mapping of tags which should be assigned to the Resource Group."
#   type        = map(string)
#   default     = {}
# }

# variable "subscription_id" {
#   description = "The name of the subscription "
#   type        = map(string)
#   default     = {}
# }

# variable "client_id" {
#   description = "client id"
#   type        = string
#   default     = {}
# }

# variable "client_secret" {
#   description = "Client Secret"
# }  
