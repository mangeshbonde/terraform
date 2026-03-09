variable "ami_id" {                       #Here we are defining a variable named "ami_id" to store the Amazon Machine Image (AMI) ID that we want to use for our EC2 instance.
  default = "ami-051a31ab2f4d498f5"
}

variable "instance-type" {
  default = "t3.micro"
}

variable "key-name" {
  default = "mumbai-key"
}

variable "security_group_ids" {
  default = ["sg-064c5b219bd75b2fa"]
}