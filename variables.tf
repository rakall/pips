
# Global variables
variable "location" {
  type = string
}

variable "resource_group" {
  type = string
}

# Public IP
variable "sku" {
  type        = string
  description = "Allowed values: Basic and Standard"
}

variable "allocation_method" {
  type        = string
  description = "Allowed values: Dynamic and Static"
}

variable "ip_prefix_assignment" {
  type = list(object({
    pip_name = string,
    prefix_name = string
  })
  )
}

variable "channel" {
  type = string

}

variable "cia" {
  type = string

}

variable "description" {
  type = string

}

variable "tracking_code" {
  type = string

}

variable "module_depends_on" {
  default = []
}
