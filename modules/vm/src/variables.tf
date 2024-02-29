variable "name" {
  description = "name of the rg"
  default     = "test"
  type        = string
}

variable "location" {
  description = "location of the rg"
  default     = "test"
  type        = string
  #   validation {

  #   }
}

variable "tags" {
  description = "tags of the rg"
  default     = "test"
  type        = map(any)
}

variable "rgname" {
  description = "value"
  default     = "test"
}

variable "size" {
  description = "value"
  default     = "Standard_B2ms"
}
variable "admin_username" {
  description = "value"
  default     = "adminuser"
}
variable "network_interface_ids" {
  description = "value"
  default     = ""
  type        = list(any)
}
variable "storage_account_uri" {
  description = "tags of the rg"
  default     = "test"
  type        = string
}
