locals {
  public  = "public"
  private = "private"
}

variable "name" {
  default = "awslab"
}

variable "vpc_cidr_block" {
  default = "172.16.0.0/16"
}

variable "public_subnet_cidr_block" {
  default = "172.16.1.0/24"
}

variable "private_subnet_cidr_block" {
  default = "172.16.2.0/24"
}

variable "private_ports" {
  type    = list(number)
  default = [3110, 22]
}

variable "public_ports" {
  type    = list(number)
  default = [80, 22]
}

variable "ami_id" {
  default = "ami-023c8dbf8268fb3ca"
}

variable "key_name" {
  default = "awslab"
}

variable "availability_zone" {
  default = "us-east-2a"
}
