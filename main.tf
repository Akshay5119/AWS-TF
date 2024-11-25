provider "aws"{
    region = "ap-south-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.30.0.0/16"

}