resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0bba083fb8369fe57"
  instance_type = "t2.micro"
  key_name      = "dell-accenture" # Replace with your key pair name

  iam_instance_profile = "Admin_Role"

  vpc_security_group_ids = ["sg-04eadbe34d65fe8b2"] # Correct attribute for security groups in VPC

  tags = {
    Name = "MyApp-Ec2-Ubuntu"
  }
}

resource "aws_eip" "my_eip" {
  instance = aws_instance.my_ec2_instance.id
  domain   = "vpc"

  tags = {
    Name = "MyElasticIP"
  }
}

output "elastic_ip" {
  value = aws_eip.my_eip.public_ip
}
