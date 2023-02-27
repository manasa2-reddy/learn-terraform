data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count                  = length(var.instances)
  ami                    = data.aws_ami.ami.image_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  }

variable "instances" {
  default = ["cart", "catalogue", "user", "payment", "Shipping"]
}