aws_region                     = "us-east-2"
vpc_cidr                       = "10.0.0.0/16"
vpc_name                       = "ctl_dev_vpc"
subnet_cidrs                   = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones             = ["us-east-2a", "us-east-2b"]
subnet_names                   = ["subnet-1", "subnet-2"]
db_subnet_group_name           = "ctl-dev-subnet"
db_subnet_group_tags           = { Name = "My DB subnet group" }
security_group_name            = "postgres_dev_sg"
security_group_description     = "Allow RDS access"
ingress_from_port              = 5432
ingress_to_port                = 5432
ingress_protocol               = "tcp"
ingress_cidr_blocks            = ["0.0.0.0/0"]
egress_from_port               = 0
egress_to_port                 = 0
egress_protocol                = "-1"
egress_cidr_blocks             = ["0.0.0.0/0"]
allocated_storage              = 200
max_allocated_storage          = 400
storage_type                   = "gp3"
engine                         = "postgres"
engine_version                 = "16.3"
instance_class                 = "db.c6gd.medium"
db_name                        = "ctl_dev"
db_identifier                  = "ctl-dev"
db_username                    = "postgres"
manage_master_user_password    = true
skip_final_snapshot            = true
publicly_accessible            = false
multi_az                       = true
rds_tags                       = { Name = "My RDS instance", Env = "Dev" }
db_parameter_group_name        = "ctl-dev-pg"
db_parameter_group_family      = "postgres16"
db_parameter_group_description = "PostgreSQL 16 parameter group"
db_parameter_group_tags        = { Name = "PostgreSQL 16 parameter group", Env = "Dev" }
