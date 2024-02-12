variable "instance_names" {
  type = list
  default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","dispatch","web"]
}

variable "ami_id"{
  type = string
  default = "ami-0f3c7d07486cad139"

}


variable "zone_id" {
  default = "Z00311677YRG4LSORA6M"
}

variable "domain_name" {
  default = "raju2512.online"
}