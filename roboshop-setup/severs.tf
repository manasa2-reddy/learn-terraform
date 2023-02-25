resource "aws_instance" "frontend" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "frontend"
  }
}

resource "aws_instance" "cart" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "cart"
  }
}

resource "aws_instance" "catalogue" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "catalogue"
  }
}

resource "aws_instance" "use" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "user"
  }
}

resource "aws_instance" "shipping" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "shipping"
  }
}

resource "aws_instance" "payment" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "payment"
  }
}

resource "aws_instance" "mongodb" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "mongodb"
  }
}

resource "aws_instance" "mysql" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "mysql"
  }
}

resource "aws_instance" "redis" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "redis"
  }
}

resource "aws_instance" "rabbitmq" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "rabbitmq"
  }
}