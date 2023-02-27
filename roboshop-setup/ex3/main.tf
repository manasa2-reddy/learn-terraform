data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "instances" {
 for_each = var.instances
  ami                    = data.aws_ami.ami.image_id
  instance_type          = each.value["type"]
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags                   = {
    Name = each.value["name"]
  }
}


variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
  }
}