variable "iam_role_name" {
  description = "The name of the IAM role to associate with the EC2 instance for granting permissions."
  type        = string
}

variable "instance_profile_name" {
  description = "The name of the instance profile that allows the EC2 instance to assume the specified IAM role."
  type        = string
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) used to launch the EC2 instance."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet in which the EC2 instance will be launched."
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type, which defines the compute, memory, and storage capacity."
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to associate with the EC2 instance for network access control."
  type        = string
}

variable "ec2_name" {
  description = "The name assigned to the EC2 instance for identification and tagging purposes."
  type        = string
}
