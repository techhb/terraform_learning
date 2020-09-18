
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

#resource "aws_instance" "myec2" {
#  ami = "ami-0603cbe34fd08cb81"
#  instance_type = "t2.micro"

#}
output "public_ip"{
  value =aws_instance.myec2.public_ip
}
