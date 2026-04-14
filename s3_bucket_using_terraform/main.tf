# main.tf

provider "aws" {
  region = "ap-southeast-1"
}
resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-bucket"
  acl    = "private"

  tags = {
    Name        = "MyExampleBucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_versioning" "example_versioning" {
  bucket = aws_s3_bucket.example_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
