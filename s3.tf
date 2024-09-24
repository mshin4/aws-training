resource "aws_s3_bucket" "pail_ms" {
  bucket = "my-tf-bucket-ms"

  tags = {
    Name        = "MS bucket"
    Environment = "QA"
  }
}