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
