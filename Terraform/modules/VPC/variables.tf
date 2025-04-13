variable "cidr_block_vpc" {
  description = "The CIDR block to define the IP address range for the Virtual Private Cloud (VPC)."
  type        = string
}

variable "cidr_block_subnet" {
  description = "The CIDR block that defines the IP address range for the subnet within the VPC."
  type        = string
}

variable "availability_zone_subnet" {
  description = "The Availability Zone within the region where the subnet will be provisioned."
  type        = string
}

variable "myip" {
  description = "The IP address range that is allowed to access the EC2 instance via SSH or other protocols."
  type        = string
}
