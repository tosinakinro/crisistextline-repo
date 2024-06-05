variable "name" {
  description = "The name of the DB parameter group."
}

variable "family" {
  description = "The family of the DB parameter group."
}

variable "description" {
  description = "The description of the DB parameter group."
}

variable "tags" {
  description = "Tags for the DB parameter group."
  type        = map(string)
}
