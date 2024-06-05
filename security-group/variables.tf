variable "name" {
  description = "The name of the security group."
}

variable "description" {
  description = "The description of the security group."
}

variable "vpc_id" {
  description = "The ID of the VPC."
}

variable "ingress_from_port" {
  description = "The starting port for ingress rules."
}

variable "ingress_to_port" {
  description = "The ending port for ingress rules."
}

variable "ingress_protocol" {
  description = "The protocol for ingress rules."
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks for ingress rules."
  type        = list(string)
}

variable "egress_from_port" {
  description = "The starting port for egress rules."
}

variable "egress_to_port" {
  description = "The ending port for egress rules."
}

variable "egress_protocol" {
  description = "The protocol for egress rules."
}

variable "egress_cidr_blocks" {
  description = "The CIDR blocks for egress rules."
  type        = list(string)
}
