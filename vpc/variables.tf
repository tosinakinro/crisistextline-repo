variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
}

variable "vpc_name" {
  description = "The name of the VPC."
}

variable "subnet_cidrs" {
  description = "A list of CIDR blocks for the subnets."
  type        = list(string)
}

variable "availability_zones" {
  description = "A list of availability zones for the subnets."
  type        = list(string)
}

variable "subnet_names" {
  description = "A list of names for the subnets."
  type        = list(string)
}
