
resource "aws_s3_bucket" "alon_test_bucket2" {
  bucket = "alon_test_bucket2"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example11" {
  bucket = aws_s3_bucket.alon_test_bucket2.id
  acl    = "private"
}
