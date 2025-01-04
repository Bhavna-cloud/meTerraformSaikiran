data "aws_vpc" "terraform-aws-testing" {
  id = "vpc-0b04f14c62b6b4b9c"
}

data "aws_subnet" "Terraform_Public_Subnet1-testing" {
  id = "subnet-04f1df21f1929a2af"
}

data "aws_security_group" "allow_all" {
  id = "sg-04fe6d9183b97e0d5"
}

