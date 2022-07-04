/* empty file - Terragrunt will generate all resources */

resource "aws_s3_bucket" "alon_test_bucket" {
  bucket = "alon-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example11" {
  bucket = aws_s3_bucket.alon_test_bucket.id
  acl    = "private"
}
