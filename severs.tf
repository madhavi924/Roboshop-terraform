module "database-servers" {
  for_each = var.database_servers
  source = "./module"
  component_name = each.value["name"]
  env            = var.env
  instance_type = each.value["instance_type"]
  password      = lookup(each.value, "password", "null")
  provisioner = true
  app_servers = ""
  database_servers = ""
}

module "app-servers" {
  depends_on = [module.database-servers]
  for_each = var.app_servers
  source = "./module"
  component_name =- each.value["name"]
  env            = var.env
  instance_type = each.value["instance_type"]
  password      = lookup(each.value, "password", "null")

  app_servers      = ""
  database_servers = ""
}