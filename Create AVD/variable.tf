variable "resource_group_location" {
  default     = "West Europe"
  description = "Location of the resource group - West Europe"
}

variable "rg_name" {
  type        = string
  default     = "AVD-RG"
  description = "Name of the Resource group in which to deploy service objects"
}

variable "workspace" {
  type        = string
  description = "Name of the Azure Virtual Desktop workspace"
  default     = "AVD-WS"
}

variable "hostpool" {
  type        = string
  description = "Name of the Azure Virtual Desktop host pool"
  default     = "AVD-HP"
}

variable "app_group_name" {
  description = "Name of the Azure Virtual Desktop application group"
  type        = string
  default     = "AVD-DAG"
}

variable "expiredate" {
  type        = string
  default     = "2025-03-01T12:43:13Z" ## Change this to a future date 
  description = "Registration token expiration"
}

variable "prefix" {
  type        = string
  default     = "AVD-HP-"
  description = "Prefix of the name of the AVD machine(s)"
}

variable "tags" {
  type    = map(string)
  default = {
    Environment = "Prod"
    Department  = "IT"
    ServiceClass = "Jihed'sTech"
    Workload = "Host Pool 01"
  }
}

data "azuread_client_config" "AzureAD" {}

data "azuread_group" "AVDGroup" {
  display_name     = "AVD-Users"  
}
