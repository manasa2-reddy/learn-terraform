data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "centos-8-DevOps-practice"
  owners           = ["97371447688"]
  }

output "ami-id" {
  value = data.aws_ami.ami.image_id
}