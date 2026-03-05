variable "key_pair_name" {
    default = "mumbai-key"
    type        = string
}

variable "security_group_id" {
    default = "sg-064c5b219bd75b2fa"
    type        = string
}

variable "ami" {
    default = "ami-051a31ab2f4d498f5"
    type        = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t3.micro"
}