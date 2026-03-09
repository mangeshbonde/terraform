resource "local_file" "example" {
    filename = "/home/ec2-user/upward.txt"
    content  = "Hello, Terraform!   From meee......"
}
