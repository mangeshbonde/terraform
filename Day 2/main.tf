provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance-type
  key_name      = var.key-name
  vpc_security_group_ids = [data.aws_security_group.my-sg-grp.id]    #data source to get the id of the security group and associate it with the EC2 instance.
             
  tags = {
    Name = "EC2-Instance"
  }
  
}

data "aws_security_group" "my-sg-grp" {    #Here we use data source to get the id of the security group that we want to associate with the EC2 instance.
  name = "my-sg"                           #Here we use the name of the security group that we want to associate with the EC2 instance.    
  vpc_id = "vpc-083955bd5e3502811"          #Here we use the vpc id of the security group that we want to associate with the EC2 instance.
}