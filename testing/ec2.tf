# ec2.tf
resource "aws_instance" "web-1" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  security_groups = [aws_security_group.allow_all.name]

  tags = {
    Name    = "web-1"
    Service = "Terraform"
  }
}
