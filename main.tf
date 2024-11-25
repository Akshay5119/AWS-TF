provider "aws" {
  region = "ap-south-1"
}

# First VPC
resource "aws_vpc" "my_vpc_1" {
  cidr_block = "10.40.0.0/16"

  tags = {
    Name = "My First VPC"
  }
}

# Second VPC
resource "aws_vpc" "my_vpc_2" {
  cidr_block = "10.50.0.0/16"

  tags = {
    Name = "My Second VPC"
  }
}
