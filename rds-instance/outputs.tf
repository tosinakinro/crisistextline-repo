output "db_instance_id" {
  value = aws_db_instance.default.id
}

output "db_availability_zone" {
  value = aws_db_instance.default.availability_zone
}

output "db_allocated_storage" {
  value = aws_db_instance.default.allocated_storage
}

output "db_max_allocated_storage" {
  value = aws_db_instance.default.max_allocated_storage
}

output "db_engine" {
  value = aws_db_instance.default.engine
}

output "db_engine_version" {
  value = aws_db_instance.default.engine_version
}

output "db_endpoint" {
  value = aws_db_instance.default.endpoint
}

output "db_multi_az" {
  value = aws_db_instance.default.multi_az
}

output "db_instance_class" {
  value = aws_db_instance.default.instance_class
}

output "db_storage_type" {
  value = aws_db_instance.default.storage_type
}
