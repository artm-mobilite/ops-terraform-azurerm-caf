variable "settings" {}
variable "global_settings" {
  description = "Global settings object (see module README.md)"
}
variable "client_config" {
  description = "Client configuration object (see module README.md)."
}

variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Container Registry. Changing this forces a new resource to be created."
}

variable "admin_enabled" {
  description = "(Optional) Specifies whether the admin user is enabled. Defaults to false."
  default     = false
}

variable "sku" {
  description = "(Optional) The SKU name of the container registry. Possible values are Basic, Standard and Premium. Defaults to Basic"
  default     = "Basic"
}

variable "tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = {}
}

variable "georeplications" {
  description = "(Optional) Updated structure for Azure locations where the container registry should be geo-replicated."
  default     = {}
}

variable "vnets" {
  default = {}
}

variable "network_rule_set" {
  description = " (Optional) A network_rule_set block as documented https://www.terraform.io/docs/providers/azurerm/r/container_registry.html"
  default     = {}
}

variable "diagnostic_profiles" {
  default = {}
}

variable "diagnostics" {
  default = {}
}

variable "private_endpoints" {
  default = {}
}

variable "resource_groups" {
  default = {}
}
variable "private_dns" {
  default = {}
}
variable "managed_identities" {
  default = {}
}
variable "keyvaults" {
  default = {}
}

variable "public_network_access_enabled" {
  default     = "true"
  description = "(Optional) Whether public network access is allowed for the container registry."
}
variable "quarantine_policy_enabled" {
  default     = null
  nullable    = true
  description = "(Optional) Boolean value that indicates whether quarantine policy is enabled."
}
variable "zone_redundancy_enabled" {
  default     = false
  description = "(Optional) Whether zone redundancy is enabled for this Container Registry?"
}
variable "export_policy_enabled" {
  default     = true
  description = "(Optional) Boolean value that indicates whether export policy is enabled."
}
variable "anonymous_pull_enabled" {
  default     = null
  nullable    = true
  description = "(Optional) Whether allows anonymous (unauthenticated) pull access to this Container Registry?"
}
variable "data_endpoint_enabled" {
  default     = null
  nullable    = true
  description = "(Optional) Whether to enable dedicated data endpoints for this Container Registry?"
}
variable "network_rule_bypass_option" {
  default     = "AzureServices"
  description = " (Optional) Whether to allow trusted Azure services to access a network restricted Container Registry?"
}
variable "trust_policy" {
  description = "(Optional) A trust_policy block as documented https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry#trust_policy"
  default     = {}
}

variable "retention_policy" {
  description = "(Optional) A retention_policy block as documented https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry#retention_policy"
  default     = {}
}

variable "identity" {
  description = "(Optional) An identity block as defined https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry#identity"
  default     = {}
}

variable "encryption" {
  description = "(Optional) An encryption block as documented https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry#encryption"
  default     = {}
}

variable "location" {
  description = "location of the resource if different from the resource group."
  default     = null
}
variable "resource_group_name" {
  description = "Resource group object to deploy the virtual machine"
  default     = null
}
variable "resource_group" {
  description = "Resource group object to deploy the virtual machine"
}
variable "base_tags" {
  description = "Base tags for the resource to be inherited from the resource group."
  type        = bool
}
