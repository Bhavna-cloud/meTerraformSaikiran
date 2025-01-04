# variables.tf
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "subnet_az" {
  description = "Availability Zone for the subnet"
  default     = "us-east-1a"
}

variable "vpc_tag" {
  description = "Tag for the VPC"
  default     = "main-vpc"
}

variable "subnet_tag" {
  description = "Tag for the subnet"
  default     = "public-subnet"
}

variable "igw_tag" {
  description = "Tag for the internet gateway"
  default     = "main-igw"
}

variable "route_table_tag" {
  description = "Tag for the route table"
  default     = "public-route-table"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}
