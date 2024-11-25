provider "aws"{
    region = "ap-south-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.90.0.0/16"

}