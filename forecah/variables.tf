variable "instance_names" {
  type = map
  default = {
    mongodb = "t3.small"
    redis = "t2.micro"
    mysql = "t3.small"
    rabbitmq = "t2.micro"
    catalogue = "t2.micro"
    cart = "t2.micro"
    user = "t2.micro"
    shipping = "t3.small"
    payment = "t2.micro"
    dispatch = "t2.micro"
    web = "t2.micro"
  }
}

variable "ami_id" {
  default = "ami-0f3c7d07486cad139"
}

variable "zone_id" {
  default = "Z00311677YRG4LSORA6M"
}

variable "domain_name" {
  default = "2512raju.online"
}
