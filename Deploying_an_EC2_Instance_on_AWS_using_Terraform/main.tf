provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_key_pair" "web_key"  {
  key_name   = "web-key"
  public_key = file("~/ssh/web_key.pub")
}

