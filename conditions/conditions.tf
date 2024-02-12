resource "aws_instance" "web" {
    ami           = var.ami_id #devops-practice
    instance_type = var.instence_name == "mongodb" ?  "t3.small" : "t2.micro"
}
