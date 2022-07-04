/* empty file - Terragrunt will generate all resources */

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example11" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
