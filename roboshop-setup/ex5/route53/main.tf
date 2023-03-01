resource "aws_route53_record" "record" {
  zone_id = "Z075358629IBJXB7AQLTD"
  name    ="${var.component}-dev.devopsb71.store"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

variable "private_ip" {}
variable "component" {}
