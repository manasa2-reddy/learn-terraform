data "aws_ami" "ami" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["973714476881"]
}

resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sg_id]
  tags = {
    name = var.component
  }
}

resource "aws_route53_record" "record" {
  zone_id ="Z1032141216L485QW30RSR"
  name = "${var.component}-dev.devopsb71.store"
  type = "A"
  ttl = 30
  records = [aws_instance.ec2.private_ip]

}



variable "component" {}
variable "instance_type" {}
variable "sg_id" {}

  output "private_ip" {
    value = aws_instance.ec2.private_ip
  }