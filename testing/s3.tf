# s3.tf
resource "aws_s3_bucket" "bhavnabucket231" {
  bucket = "bhavnabucket231"  # Ensure the bucket name is globally unique
  acl    = "private"

  tags = {
    Name    = "bhavnabucket231"
    Service = "Terraform"
  }
}
