provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance-type
  key_name      = var.key-name
  vpc_security_group_ids = [data.aws_security_group.my-sg-grp.id]
             
  tags = {
    Name = "EC2-Instance"
  }
  
}

data "aws_security_group" "my-sg-grp" {
  name = "my-sg"
  vpc_id = "vpc-083955bd5e3502811"
}