variable "name" {
  description = "The name of the DB subnet group."
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the DB subnet group."
  type        = list(string)
}

variable "tags" {
  description = "Tags for the DB subnet group."
  type        = map(string)
}
