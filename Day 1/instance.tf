provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "lasan" {
  ami           = var.ami_id
  instance_type = var.instance-type
  key_name      = var.key-name
  vpc_security_group_ids = var.security_group_ids
  user_data = <<- EOF
                #!/bin/bash
                yum install httpd -y
                systemctl start httpd
                systemctl enable httpd
                echo "<h1>Welcome to Lasana's Web Server</h1>" > /var/www/html/index.html
                EOF
 
                
  tags = {
    Name = "Lasana-Instance"
  }
  
}