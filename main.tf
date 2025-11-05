provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-08df646e18b182346"  # Ubuntu 22.04 LTS
  instance_type = "t2.micro"
  key_name      = "my-ec2-key"

  tags = {
    Name = "Terraform-Jenkins-EC2"
  }
}
