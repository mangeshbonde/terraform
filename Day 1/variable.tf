variable "ami_id" {
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