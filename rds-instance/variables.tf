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

variable "parameter_group_name" {
  description = "The parameter group name for the RDS instance."
}

variable "skip_final_snapshot" {
  description = "Whether to skip the final snapshot before deleting the DB instance."
  default     = true
}

variable "publicly_accessible" {
  description = "Whether the DB instance is publicly accessible."
  default     = false
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the RDS instance."
}

variable "db_subnet_group_name" {
  description = "The DB subnet group name for the RDS instance."
}

variable "multi_az" {
  description = "Whether to enable Multi-AZ for the RDS instance."
  default     = true
}

variable "tags" {
  description = "Tags for the RDS instance."
  type        = map(string)
}
