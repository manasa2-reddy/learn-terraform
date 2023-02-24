resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vmi_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "test"
  }
}