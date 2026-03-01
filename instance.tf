provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "example" {
  for_each      = toset(["Server-1", "Server-2", "Server-3"])
  ami           = "ami-051a31ab2f4d498f5"
  instance_type = "t3.micro"
  key_name      = "mumbai-key"
  tags = {
    Name = each.key
  }
}
