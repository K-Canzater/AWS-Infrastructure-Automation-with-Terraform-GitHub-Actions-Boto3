output "public_ip" {
  description = "The public IPv4 address assigned to the EC2 instance."
  value       = aws_instance.ec2_instance.public_ip
}

output "private_ip" {
  description = "The private IPv4 address assigned to the EC2 instance within the VPC."
  value       = aws_instance.ec2_instance.private_ip
}

output "instance_id" {
  description = "The unique identifier of the EC2 instance."
  value       = aws_instance.ec2_instance.id
}

output "iam_role_name" {
  description = "The name of the IAM role attached to the EC2 instance."
  value       = aws_iam_role.iam_role.name
}

output "instance_profile_name" {
  description = "The name of the instance profile associated with the EC2 instance's IAM role."
  value       = aws_iam_instance_profile.instance_profile.name
}
