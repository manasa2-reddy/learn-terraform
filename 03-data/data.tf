data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "centos-8-DevOps-practice"
  owners           = ["973714476881"]
}

output "ami_id" {
  value = data.aws_ami.ami["image_id"]
}