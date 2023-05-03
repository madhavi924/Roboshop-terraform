data "aws_ami" "centos" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}
data"aws_security_group" "allow-all" {
  name = "allow-all"
}

  variable"component" {
    default = {
      frontend = {
    name       = "frontend"
    instance_type = "t3.micro"
  }
      mongodb = {
      name = "mongodb"
      instance_type = "t3.micro"
      }
catalogue = {
  name = "catalogue"
  instance_type = "t3.micro"
}
redis = {
  name = "redis"
  instance_type = "t3.micro"
}
user = {
  name = "user"
  instance_type = "t3.micro"
}
cart = {
  name = "cart"
  instance_type = "t3.micro"
}
mysql = {
  name = "mysql"
  instance_type = "t3.micro"
}
rabbitmq = {
  name = "rabbitmq"
  instance_type = "t3.micro"
}
shipping = {
  name = "shipping"
  instance_type = "t3.micro"
}
payment = {
  name = "payment"
  instance_type = "t3.micro"
}
resource "aws_instance" "instance"
for_each = var.component
ami = data.aws_ami.centos.image_id
instancetype = "each.value"["instance_type"]
vpc_security_group_ids=[data.aws_security_group.allow-all.id]
tags = {
  name = "each.value" ["name"]
}
}
