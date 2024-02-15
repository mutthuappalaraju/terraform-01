output "ami_id" {
  value = data.aws_ami.centos8.id
}

output "aws_ami_id" {
  value = data.aws_ami.ubuntu-pro.id
}

output "aws_ami_id2" {
  value = data.aws_ami.AmazonLinux.id
}