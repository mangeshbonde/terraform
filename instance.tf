provider "aws" {
  region = "ap-south-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "server-mumbai"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGH7HjVlWdY3TTXoc0o+qwWezI/6qZn+FC5NbXlADd8O 91937@Mangesh"
}

resource "aws_instance" "example" {
  ami           = "ami-051a31ab2f4d498f5"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.deployer.key_name
  count         = 3

  tags = {
    Name = "instance-mumbai"
  }
}