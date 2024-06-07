output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = aws_subnet.private_subnet[*].id
}

output "security_group_ingress_port" {
  value = module.security-group.security_group_ingress_port
}

output "vpc_cidr_block" {
  value = module.vpc.vpc_cidr_block
}

output "db_availability_zone" {
  value = module.rds-instance.db_availability_zone
}

output "db_instance_id" {
  value = module.rds-instance.db_instance_id
}
