
resource "aws_instance" "frontend" {
instance_type = "t3.micro"
vpc_security_group_ids = ["sg-094ac9e937067c392"]
tags = {
name = "frontend"
}
}

resource "aws_route53_record" "frontend" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "frontend-dev.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "cart" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "cart"
  }
}


resource "aws_route53_record" "cart" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "cart-dev.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "catalogue" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags                   = {
    name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "catalogue-dev.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "user" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "user"
  }
}


resource "aws_route53_record" "user" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "user-dev.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.user.private_ip]
}


resource "aws_instance" "shipping" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "shipping"
  }
}


resource "aws_route53_record" "shipping" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "shipping-dev.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "payment" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "payment"
  }
}


resource "aws_route53_record" "payment" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "payment-dev.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "mongodb" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "mongodb"
  }
}


resource "aws_route53_record" "mongodb" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "mongodb-dev.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "mysql" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "mysql-dev.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "redis" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "redis"
  }
}


resource "aws_route53_record" "redis" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "redis-dev.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.redis.private_ip]
}


resource "aws_instance" "rabbitmq" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-094ac9e937067c392"]
  tags = {
    name = "rabbitmq"
  }
}


resource "aws_route53_record" "rabbitmq" {
zone_id = "Z075358629IBJXB7AQLTD"
name    = "rabbitmq.devopsb71.store"
type    = "A"
ttl     = 30
records = [aws_instance.rabbitmq.private_ip]
}