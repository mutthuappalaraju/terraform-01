# output "instance_info" {
#     value = aws_instance.web
 
# } 

output "public_ip"{
    value = aws_instance.web.public_ip
     
}

output "private_ip"{
    value = aws_instance.web.private_ip

}

output "instence_id"{
    value = aws_instance.web.id

}

output "subnet_id"{
    value = aws_instance.web.subnet_id
}

