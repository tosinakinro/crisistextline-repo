
module "vpc" {
  source               = "./vpc"
  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  subnet_cidrs         = var.subnet_cidrs
  availability_zones   = var.availability_zones
  subnet_names         = var.subnet_names
}

module "db-subnet-group" {
  source     = "./db-subnet-group"
  name       = var.db_subnet_group_name
  subnet_ids = module.vpc.subnet_ids
  tags       = var.db_subnet_group_tags
}

module "security-group" {
  source                 = "./security-group"
  name                   = var.security_group_name
  description            = var.security_group_description
  vpc_id                 = module.vpc.vpc_id
  ingress_from_port      = var.ingress_from_port
  ingress_to_port        = var.ingress_to_port
  ingress_protocol       = var.ingress_protocol
  ingress_cidr_blocks    = var.ingress_cidr_blocks
  egress_from_port       = var.egress_from_port
  egress_to_port         = var.egress_to_port
  egress_protocol        = var.egress_protocol
  egress_cidr_blocks     = var.egress_cidr_blocks
}

module "db-parameter-group" {
  source      = "./db-parameter-group"
  name        = var.db_parameter_group_name
  family      = var.db_parameter_group_family
  description = var.db_parameter_group_description
  tags        = var.db_parameter_group_tags
}

module "rds-instance" {
  source                      = "./rds-instance"
  allocated_storage           = var.allocated_storage
  max_allocated_storage       = var.max_allocated_storage
  storage_type                = var.storage_type
  engine                      = var.engine
  engine_version              = var.engine_version
  instance_class              = var.instance_class
  db_name                     = var.db_name
  db_identifier               = var.db_identifier
  db_username                 = var.db_username
  manage_master_user_password = var.manage_master_user_password
  parameter_group_name        = module.db-parameter-group.parameter_group_name
  skip_final_snapshot         = var.skip_final_snapshot
  publicly_accessible         = var.publicly_accessible
  vpc_security_group_ids      = [module.security-group.security_group_id]
  db_subnet_group_name        = module.db-subnet-group.db_subnet_group_name
  multi_az                    = var.multi_az
  tags                        = var.rds_tags
}
