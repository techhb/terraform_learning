
provider "aws" {
  region     = "us-east-2"
  access_key = [var.access_key]
  secret_key = [var.secret]
}

resource "aws_instance" "myec2" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

}
output "public_ip"{
  value =aws_instance.myec2.instance_type
}
