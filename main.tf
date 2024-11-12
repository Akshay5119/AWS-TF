provider "aws"{
    region = "ap-south-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.40.0.0/16"

}