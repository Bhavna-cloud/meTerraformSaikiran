# ec2.tf
resource "aws_instance" "web-1" {
  ami                    = "ami-0e2c8caa4b6378d8c"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name    = "web-1"
    Service = "Terraform"
  }
}
