# internet_gateway.tf
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name    = var.igw_tag
    Service = "Terraform"
  }
}
