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
### initialize terraform
```bash
terraform init
```
### apply terraform
```bash
terraform 
yes
```