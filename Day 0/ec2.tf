provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_pair_name
  count         = 3
  vpc_security_group_ids = [var.security_group_id]
  tags = {
    Name = "instance-mumbai"
  }

}