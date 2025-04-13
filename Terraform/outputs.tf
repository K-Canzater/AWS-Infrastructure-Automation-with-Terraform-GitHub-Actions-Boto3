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
