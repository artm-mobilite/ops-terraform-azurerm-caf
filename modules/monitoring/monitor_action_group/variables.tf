variable "global_settings" {
  description = "Global settings object"
}

variable "location" {
  description = "location of the resource if different from the resource group."
  default     = null
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Action Group instance"
  type        = string
}

variable "resource_group" {
  description = "Resource group object to deploy the virtual machine"
}

variable "settings" {
  description = "Configuration object for the monitor action group"
}

variable "base_tags" {
  description = "Base tags for the resource to be inherited from the resource group."
  type        = bool
}
variable "remote_objects" {
  description = "Handle remote combined objects"
}
