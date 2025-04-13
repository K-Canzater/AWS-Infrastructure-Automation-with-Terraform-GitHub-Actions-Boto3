#IAM Module Outputs
output "aws_iam_user_from_module" {
  description = "The IAM User"
  value       = module.IAM.iam_user

}

output "aws_iam_group_from_module" {
  description = " The IAM Group"
  value       = module.IAM.iam_group
}

output "aws_iam_policy_attachment_from_module" {
  description = "The Policy Attached"
  value       = module.IAM.iam_policy_attachment

}

#S3 Outputs

output "aws_s3_bucket_from_module" {
  description = "The Bucket Name"
  value       = module.S3.s3_bucket

}

output "aws_bucket_arn" {
  description = "The arn of bucket"
  value       = module.S3.aws_bucket_arn
}

#VPC Outputs
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.VPC.vpc_id

}

output "subnet_id" {
  description = "The unique identifier of the subnet."
  value       = module.VPC.subnet_id
}

output "internet_gateway_id" {
  description = "The unique identifier of the internet gateway."
  value       = module.VPC.internet_gateway_id
}

output "route_table_id" {
  description = "The unique identifier of the route table."
  value       = module.VPC.route_table_id
}

output "security_group_id" {
  description = "The unique identifier of the security group."
  value       = module.VPC.security_group_id
}
