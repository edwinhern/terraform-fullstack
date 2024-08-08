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
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
