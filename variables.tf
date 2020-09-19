variable "ami_name" {
  type    = string
  default = "Jenkins Build Server"
}
variable "ami_id" {
  type    = string
  default = "ami-0603cbe34fd08cb81"
}
variable "ami_key_pair_name" {
  type    = string
  default = "ec2_conn"
}
