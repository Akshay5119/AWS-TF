resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-001c21d4d39ea1a1c"
  instance_type = "t2.micro"
  key_name      = "my-key-pair" # Replace with your key pair name

  iam_instance_profile = "Admin_Role" # Assign the IAM instance profile

  security_groups = ["sg-04eadbe34d65fe8b2"]

  tags = {
    Name = "MyApp-Ec2-TF"
  }
}

resource "aws_eip" "my_eip" {
  instance = aws_instance.my_ec2_instance.id
  domain   = "vpc" # Use "domain" instead of "vpc"

  tags = {
    Name = "MyElasticIP"
  }
}

output "elastic_ip" {
  value = aws_eip.my_eip.public_ip
}
