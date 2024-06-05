resource "aws_db_parameter_group" "default" {
  name        = var.name
  family      = var.family
  description = var.description

  parameter {
    name  = "log_statement"
    value = "all"
  }

  tags = var.tags
}
