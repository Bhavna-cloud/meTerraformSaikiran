# s3.tf
resource "aws_s3_bucket" "bhavnabucket231" {
  bucket = "bhavnabucket231"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
