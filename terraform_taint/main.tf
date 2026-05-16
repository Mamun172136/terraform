provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "web_server" {
  ami                         = "ami-060e277c0d4cce553"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-xxxxxxxx"
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > /invalid/web_server_ip.txt"
  }
}