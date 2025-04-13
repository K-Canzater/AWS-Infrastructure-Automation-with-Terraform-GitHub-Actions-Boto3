output "iam_user" {
  description = "This is the IAM user"
  value       = aws_iam_user.user.name

}

output "iam_group" {
  description = "The IAM Group"
  value       = aws_iam_group.group.name
}

output "iam_policy_attachment" {
  description = "The Policy Attached"
  value       = aws_iam_group_policy_attachment.policy_attached.policy_arn
}
