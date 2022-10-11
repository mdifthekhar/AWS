resource "aws_vpc" "dev" {
  cidr_block           = "192.168.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    Name = "dev"
  }
}

# Creating Public Subnets in VPC
resource "aws_subnet" "dev-public-1" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = "192.168.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-1a"

  tags = {
    Name = "dev-public-1"
  }
}

resource "aws_subnet" "dev-public-2" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = "192.168.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-southeast-1b"

  tags = {
    Name = "dev-public-2"
  }
}

# Creating Private Subnets in VPC
resource "aws_subnet" "dev-private-1" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = "192.168.3.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-southeast-1a"

  tags = {
    Name = "dev-private-1"
  }
}

resource "aws_subnet" "dev-private-2" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = "192.168.4.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "ap-southeast-1b"

  tags = {
    Name = "dev-private-2"
  }
}
