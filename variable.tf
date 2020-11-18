#Provider
variable "region" {
  default = "us-east-1"
}

#VPC
variable "cidr" {
  default = "10.0.0.0/16"
}

variable "pub_subnet_cidr" {
  default = "10.0.16.0/24"
}

variable "pri_subnet_cidr" {
  default = "10.0.0.0/24"
}



#EC2
variable "ami" {
  default = "ami-2757f631" #id of desired AMI
}

variable "ec2_type" {
  default = "t2.micro"
}

variable "ami_01" {
  default = "ami-2757f631" #id of desired AMI
}

variable "ec2_type_01" {
  default = "t2.micro"
}

variable "ami_02" {
  default = "ami-2757f631" #id of desired AMI
}

variable "ec2_type_02" {
  default = "t2.micro"
}

