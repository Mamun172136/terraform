provider "aws"{
    region= "ap-southeast-1"
}

aws "aws-key-pair" "example"{
    key_name="example-key"
    public_key=file("~/.ssh/id_rsa.pub)
}

aws "