# Project variables
variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "environment" {
  description = "The environment (e.g. prod, dev, staging)"
  type        = string
}

# Network variables
variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}
