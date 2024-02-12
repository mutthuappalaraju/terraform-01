variable "sg-name" {
  type = string
  default = "mutthu-aws-ec2"
}

variable "sg-description" {
  type = string
  default = "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
  #type = string
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "ami_id"{
  type =  string
  default = "ami-0f3c7d07486cad139"

}

variable "instence_type"{
  type = string
  default = "t2.micro"

}

variable "tags"{
  type = map
  default = {
    Name = "Hello Terraform"
    Project = "Roboshop"
    Environment = "DEV"
    Component = "Web"
    Terraform = "true"
  }

}