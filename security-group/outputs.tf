output "security_group_id" {
  value = aws_security_group.rds_sg.id
}

output "security_group_ingress_port" {
  value = element([for rule in aws_security_group.rds_sg.ingress : rule.to_port], 0)
}
