output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = aws_subnet.private_subnet[*].id
}

output "vpc_cidr_block" {
  value = aws_vpc.main.cidr_block
}
