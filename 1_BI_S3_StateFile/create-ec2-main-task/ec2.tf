resource "aws_instance" "web-1" {
  # ami = "${data.aws_ami.my_ami.id}"
  ami                         = "ami-0e2c8caa4b6378d8c"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "bhavna-key"
  subnet_id                   = data.aws_subnet.Terraform_Public_Subnet1-testing.id
  vpc_security_group_ids      = [data.aws_security_group.allow_all.id]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = "Prod"
    Owner      = "bhavna"
    CostCenter = "ABCD"
  }
}    


#backend block for s3
terraform {
  backend "s3" {
    bucket = "bhavnas-bucket"
    key    = "Current-ec2-state.tfstate"
    region = "us-east-1"
  }
}