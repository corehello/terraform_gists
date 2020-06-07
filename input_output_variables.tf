terraform {
  required_providers {
  }
  experiments = [variable_validation]
}

variable "string" {
  type        = string
  default     = "default string"
  description = "A string input variable"
  validation {
    condition     = length(var.string) > 4
    error_message = "Validation error message must be at least one full English sentence starting with an uppercase letter and ending with a period or question mark."
  }
}

output "string" {
  value       = var.string
  description = "A string input variable"
  sensitive   = true
  depends_on = [
    var.string
  ]
}

variable "number" {
  type        = number
  default     = 0
  description = "A number input variable"
}

output "number" {
  value = var.number
}

variable "bool" {
  type        = bool
  default     = true
  description = "A bool input variable"
}

output "bool" {
  value = var.bool
}

variable "list_string" {
  type        = list(string)
  default     = ["default_list1", "default_list2"]
  description = "A string list input variable"
}

output "list_string" {
  value = var.list_string
}

variable "list_object" {
  type = list(object({
    key1 = string
    key2 = number
    key3 = bool
    }
  ))
  default = [{
    key1 = "string"
    key2 = 0
    key3 = true
    }, {
    key1 = "string"
    key2 = 1
    key3 = false
  }]
  description = "A object list input variable"
}

output "list_object" {
  value = var.list_object
}

variable "set_string" {
  type        = set(string)
  default     = ["item1", "item2", "item3"]
  description = "A set string input variable"
}

output "set_string" {
  value = var.set_string
}

variable "map_string" {
  type = map(string)
  default = {
    "key1" = "value1"
    "key2" = 2
    "key3" = true
  }
  description = "A map_string key input variable"
}

output "map_string" {
  value = var.map_string
}

variable "tuple_string" {
  type        = tuple([string, number, bool])
  default     = ["string", 0, true]
  description = "A tuple input variable"
}

output "tuple_string" {
  value       = var.tuple_string
  description = "A tuple input variable"
}
