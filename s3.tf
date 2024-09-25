resource "aws_s3_bucket" "my_bucket" {
  bucket = "test-bucket-ms007"

  tags = {
    Name        = "MS bucket"
    Environment = "QA"
  }
}