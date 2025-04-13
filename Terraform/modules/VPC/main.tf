#Create The VPC
resource "aws_vpc" "vpc" {

  cidr_block           = var.cidr_block_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "My-vpc"
  }

}


#Create The Subnet
resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.vpc.id

  cidr_block              = var.cidr_block_subnet
  availability_zone       = var.availability_zone_subnet
  map_public_ip_on_launch = true

  tags = {
    Name = "My-Subnet"
  }

}


#Create The Internet Gateway
resource "aws_internet_gateway" "internet" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "My-Internet-Gateway"
  }

}


#Create The Route Table
resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet.id
  }

  tags = {
    Name = "My-Route-Table"
  }

}


#Create The Route Table Association
resource "aws_route_table_association" "route_association" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.route_table.id

}


#Create The Security Group

resource "aws_security_group" "security_group" {
  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.myip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "Security-Group"
  }
}
