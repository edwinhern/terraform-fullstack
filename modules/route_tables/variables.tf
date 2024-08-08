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

variable "vpc_default_route_table_id" {
  description = "The ID of the VPC's default route table"
  type        = string
}

variable "internet_gateway_id" {
  description = "The ID of the internet gateway"
  type        = string
}

variable "public_subnet_ids" {
  description = "The IDs of the public subnets"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "The IDs of the private subnets"
  type        = list(string)
}
