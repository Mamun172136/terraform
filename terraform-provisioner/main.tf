provider "aws"{
    region= "ap-southeast-1"
}

resource "aws_key_pair" "example"{
    key_name="example-key"
    public_key=file("~/.ssh/id_rsa.pub)
}

resource "aws_security_group" "example"{
    vpc_id=""

    ingress{
        from_port=22
        to_port=22
        protocol=tcp
        cidr_blocks= ["0.0.0.0/0"]
        
    }

    ingress{
        from_port=22
        to_port=22
        protocol=tcp
        cicd_blocks=["0.0.0.0/0"]
    }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example"{
    ami=""
    instance_type=t2.micro
    key_name= aws_key_pair.example.key_name
    subnet_id=""
    vpc_security_groups_ids=[aws_security_group.example.id]
    associate_public_id_address= true
}

provisioner "remote-exec"{
    connection{
        type = "ssh"
        user = "ubuntu"
        private_key= file("~/.ssh/id_rsa")
        host= self.public_key
    }

    inline = [
    "sudo apt update -y",
    "sudo apt install -y nginx",
    "sudo systemctl enable nginx",
    "sudo systemctl start nginx"
  ]
}

provisioner "local-exec"{
    command= "echo ${self.public_key} created > instance_ip.txt
}