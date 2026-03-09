output "public-ip" {
  value = aws_instance.lasan.public_ip
}                                     #Here we are using output to display the public IP address of the EC2 instance after it is created. We can access the web server using this public IP address.