resource "aws_db_instance" "default" {
  engine                      = var.engine
  engine_version              = var.engine_version
  allocated_storage           = var.allocated_storage
  max_allocated_storage       = var.max_allocated_storage # added
  storage_type                = var.storage_type
  instance_class              = var.instance_class
  db_name                     = var.db_name
  username                    = var.db_username
  manage_master_user_password = var.manage_master_user_password #added
  parameter_group_name        = var.parameter_group_name
  skip_final_snapshot         = var.skip_final_snapshot
  publicly_accessible         = var.publicly_accessible
  vpc_security_group_ids      = var.vpc_security_group_ids
  db_subnet_group_name        = var.db_subnet_group_name
  identifier                  = var.db_identifier
  multi_az                    = var.multi_az

  tags = var.tags
}
