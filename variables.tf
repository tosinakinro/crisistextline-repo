variable "aws_region" {
  description = "The AWS region to deploy the resources."
}

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

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group."
}

variable "db_subnet_group_tags" {
  description = "Tags for the DB subnet group."
  type        = map(string)
}

variable "security_group_name" {
  description = "The name of the security group."
}

variable "security_group_description" {
  description = "The description of the security group."
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

variable "allocated_storage" {
  description = "The allocated storage size for the RDS instance."
}

variable "max_allocated_storage" {
  description = "The max allocated storage size for the RDS instance. Setting a value higher than the allocated storage enables autoscaling"
}

variable "storage_type" {
  description = "The storage type for the RDS instance."
}

variable "engine" {
  description = "The database engine for the RDS instance."
}

variable "engine_version" {
  description = "The engine version for the RDS instance."
}

variable "instance_class" {
  description = "The instance class for the RDS instance."
}

variable "db_name" {
  description = "The name of the database."
}

variable "db_identifier" {
  description = "The name of the RDS instance."
}

variable "db_username" {
  description = "The username for the database."
}

variable "manage_master_user_password" {
  description = "enable secrets manager to manage db password and prevents the storage of this secret in the statefile"
}

variable "skip_final_snapshot" {
  description = "Whether to skip the final snapshot before deleting the DB instance."
  default     = true
}

variable "publicly_accessible" {
  description = "Whether the DB instance is publicly accessible."
  default     = false
}

variable "multi_az" {
  description = "Whether to enable Multi-AZ for the RDS instance."
  default     = true
}

variable "rds_tags" {
  description = "Tags for the RDS instance."
  type        = map(string)
}


variable "db_parameter_group_name" {
  description = "The name of the DB parameter group."
}

variable "db_parameter_group_family" {
  description = "The family of the DB parameter group."
}

variable "db_parameter_group_description" {
  description = "The description of the DB parameter group."
}

variable "db_parameter_group_tags" {
  description = "Tags for the DB parameter group."
  type        = map(string)
}

