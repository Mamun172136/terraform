### install aws cli

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

### verify install

```bash
aws --version
```

### configure aws cli

```bash
AWS Access Key ID [None]: YOUR_ACCESS_KEY
AWS Secret Access Key [None]: YOUR_SECRET_KEY
Default region name [None]: ap-southeast-1
Default output format [None]: json
```

### Create a VPC in the AWS ap-southeast-1 region.

### Create a subnet in the VPC and copy the subnet ID.

### terraform init

### terraform apply

### inspect the tainted resource

```bash
terraform plan
```

### correct the config and apply

```bash
command = "echo ${self.public_ip} > /tmp/web_server_ip.txt"
terraform apply
```

### manual tain
```bash
terraform taint aws_instance.web_server
```

