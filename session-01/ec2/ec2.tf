
resource "aws_instance" "web" {
    ami           = var.ami_id #devops-practice
    instance_type = var.instence_type
    vpc_security_group_ids = [aws_security_group.mutthu-all.id]
    tags = var.tags    
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