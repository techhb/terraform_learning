
provider "aws" {
  region     = "us-east-2"


}
terraform {
  backend "remote" {
    organization = "techhb"

    workspaces {
      name = "terraform_training"
    }
  }
}


resource "aws_instance" "test-ec2-instance" {
  ami = var.ami_id
  instance_type = "t2.micro"
  key_name = var.ami_key_pair_name
  security_groups = [aws_security_group.ingress-all-test.id]
subnet_id = aws_subnet.subnet-uno.id
}
output "public_ip"{
  value = aws_instance.test-ec2-instance.public_ip
}

resource "aws_key_pair" "ec2_ppk" {
  key_name   = "deployer-key"
  public_key = "AAAAB3NzaC1yc2EAAAADAQABAAABAQCDxdfR+LBQrTPqkBtXemqSRFZAfRCxNkudwVPhoc17wCTQECJP7TkmM9bqes5HaQVrJKutIq/ciNtQGKWiypGwAdYUWyektkzuMyHLaU+vV5gR5OstnzXIBE5NeWkH7tg+RU0/PTlOpH/y1mMYnBviOKR3rlkjrgtuZ80sFt0BgfHPrax7Nmg4G369Fv9KEYaiz29MDhUsisy1pFNmDINFoUC/rEIuWksmu/W4VWt5oMh4jCiPGWqAyhHs2jNZ3vdBPSqFYKCnMA+WAFBI7SP3IT5E7u7XjM7tMhALgT1WB7KVru6JW1ezqZjvLpnG8mFalFsT7mfJv2/z2arTlKMH"
}
