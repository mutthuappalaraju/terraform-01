
resource "aws_instance" "web" {
    ami           = "ami-0f3c7d07486cad139"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.mutthu-all.id]
    
    
  tags = {
    Name = "mutthu-Terraform"
  }

}

resource "aws_security_group" "mutthu-all" {
    name        = "var.sg-name"
    description = "var.sg-description" 





    ingress {
    description      = "allow all ports"
    from_port        = var.inbound-from-port
    to_port          = 0 
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
} 

    
    egress {
    description      = "Allow All ports"
    from_port        = 0 
    to_port          = 0 
    protocol         = "tcp"
    cidr_blocks      =  ["0.0.0.0/0"]  
   
}

       tags = {
        Name = "mutthu-aws-ec2" #aws sg name
    }
}