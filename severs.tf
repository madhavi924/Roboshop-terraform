resource "aws_instance" "instance" {
for_each = "var.components"
ami = data.aws_ami.centos.image_id
instance_type = each.value["instance_type"]
vpc_security_group_ids=[data.aws_security_group.allow-all.id]
tags = {
  name = each.value["name"]
}
}
