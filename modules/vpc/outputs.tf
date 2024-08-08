output "vpc_id" {
  value = aws_vpc.project_vpc.id
}

output "vpc_default_route_table_id" {
  value = aws_vpc.project_vpc.default_route_table_id
}
