
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

/*
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

resource "aws_key_pair" "ec2_conn" {
  key_name   = "ec2_conn"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCYfCAXkNBPYyq5HqZjeNJUFDB6TZcGm6KKJXKpgL5zqFbg/u5ao0z0sWt8Cz6z5lKGs/kjdbd4N8+H0Z/42CuYyB+JT0jMo3p/tiCpDuiLPJECpjyMm7wjYpIBVd6PPORo+WU5h/iG3FeoHmSFjJJyYHaBT0kJ9ElSemsL+R1POg+bpO8OIGa2EGHgWFqx2wiFbQE5Jwr6jzetJRnR1elo1ppr7z78z1cqu8mLenoYzBQzJ3yn9CRL79P0aaAEgQonfn+iNdyRN9XY8JZix0eEtG/mB1RQIUD4VZ5Vk/SESUZ07JrUzHmp7K+PHCw9+2ITGUxOOxMVlN2z53tcJQYH"
}*/
