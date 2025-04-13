output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id

}

output "subnet_id" {
  description = "The subnet id"
  value       = aws_subnet.subnet.id

}

output "internet_gateway_id" {
  description = "The internet gateway id"
  value       = aws_internet_gateway.internet.id

}

output "route_table_id" {
  description = "The ID of the route table"
  value       = aws_route_table.route_table.id

}

output "security_group_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.security_group.id

}
