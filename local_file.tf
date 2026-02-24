resource "local_file" "example" {
    filename = "/home/ec2-user/hello.txt"
    content  = "Hello, Terraform!"
}
