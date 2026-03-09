terraform {
  backend "s3" {
   #Here we specify that we want to use S3 as the backend for storing the terraform state file.
    bucket = "terraform-state-backup-12-g" #Here we specify the name of the S3 bucket where we want to store the terraform state file.
    key    = "terraform.tfstate"   #Here we specify the key name for the state file in the S3 bucket.
    region = "ap-south-1"           #Here we specify the region where the S3 bucket is located.
  }
 }

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance-type
  key_name      = var.key-name
  vpc_security_group_ids = ["aws_security_group.my-sg-grp.id"]   #Here we are using the id of the security group that we imported to the terraform state.
             
  tags = {
    Name = "EC2-Instance"
  }
  
}
#importing security group to the terraform state.
resource "aws_security_group" "my-sg-grp" {     #Here we use resource block to import the security group to the terraform state.
  name = "my-sg"                                #Here we use the name of the security group that we want to import to the terraform state.
  vpc_id = "vpc-083955bd5e3502811"              #Here we use the vpc id of the security group that we want to import to the terraform state.
}


#Use import command to import the security group to the terraform state.
#terraform import aws_security_group.my-sg-grp sg-064c5b219bd75b2fa
#after importing the security group to the terraform state, we can use its id in the aws_instance resource block to associate it with the EC2 instance.