 app_servers =  {
    frontend = {
      name          = "frontend"
      instance_type = "t3.micro"
    }

    catalogue = {
      name          = "catalogue"
      instance_type = "t3.micro"
    }

    user = {
      name          = "user"
      instance_type = "t3.micro"
    }
    cart = {
      name          = "cart"
      instance_type = "t3.micro"
    }

    shipping = {
      name          = "shipping"
      instance_type = "t3.micro"
    }
    payment = {
      name          = "payment"
      instance_type = "t3.micro"
      password = "roboshop123"
    }
  }
env = 'dev'
 database_servers = {
   rabbitmq = {
     name          = "rabbitmq"
     instance_type = "t3.small"
     password      = "roboshop123"
   }
   mysql = {
     name          = "mysql"
     instance_type = "t3.small"
     password      = "Roboshop@1"
   }
   radis = {
     name          = "radis"
     instance_type = "t3.small"
   }
   mongodb = {
     name          = "mongodb"
     instance_type = "t3.small"

   }
 }