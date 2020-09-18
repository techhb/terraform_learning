provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAQKW66N6DZGKFZNGT"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

}
outputs{
  value =aws_instance.myec2.attributes.public_ip
}
