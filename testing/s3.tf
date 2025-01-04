# s3.tf
resource "aws_s3_bucket" "bhavnabucket231" {
  bucket = "bhavnabucket231" # Ensure the bucket name is globally unique

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  depends_on = [aws_route_table_association.public]
}

resource "aws_s3_bucket" "bhavnabucket232" {
  bucket = "bhavnabucket232" # Ensure the bucket name is globally unique

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  depends_on = [aws_s3_bucket.bhavnabucket231]
}

resource "aws_s3_bucket" "bhavnabucket233" {
  bucket = "bhavnabucket233" # Ensure the bucket name is globally unique

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  depends_on = [aws_s3_bucket.bhavnabucket232]
}