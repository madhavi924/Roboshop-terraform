data "aws_ami" "centos" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}
data "aws_security_group" "allow-all" {
  name = "allow-all"
}

  variable"component" {}

resource "aws_instance" "instance" {
for_each = var.component
ami = data.aws_ami.centos.image_id
instance_type = each.value["instance_type"]
vpc_security_group_ids=[data.aws_security_group.allow-all.id]
tags = {
  name = each.value["name"]
}
}
