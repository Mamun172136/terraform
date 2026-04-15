# main.tf

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_iam_policy" "example_policy" {
  name        = "ExamplePolicy"
  description = "IAM policy to allow S3 access"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListBucket",
          "s3:GetObject"
        ]
        Resource = "*"
      }
    ]
  })
}
