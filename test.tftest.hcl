# valid_string_concat.tftest.hcl

run "sg_ingress_validate" {

  command = apply

  assert {

    condition = module.security-group.security_group_ingress_port == 5432
    error_message = "port 5432 is not open for inbound traffic"
  }
}

run "vpc_cidr_validate"{

  command = apply

  assert {
    condition     = module.vpc.vpc_cidr_block == "10.0.0.0/16"
    error_message = "Incorrect cidr block configured on VPC"
  }
}

#Validate the rds instance is created
run "db_instance_validate" {

  command = apply

  assert {
    condition     = module.rds-instance.db_instance_id != ""
    error_message = "DB instance not provisioned"
  }
}

#Validate DB Engine
run "db_engine_validate" {

  command = plan

  assert {
    condition     = module.rds-instance.db_engine == "postgres"
    error_message = "engine for rds instance is not postgres"
  }
}

#Validate autoscaling is configured
run "autoscaling_validate" {

  command = apply

  assert {
    condition     = module.rds-instance.db_max_allocated_storage > module.rds-instance.db_allocated_storage
    error_message = "Autoscalling is not configured for this DB"
  }

}






