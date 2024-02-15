data "aws_ami" "centos8"{
    owners = ["973714476881"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["Centos-8-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_ami" "ubuntu-pro"{
    owners = ["099720109477"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["ubuntu-pro-server/images/hvm-ssd/ubuntu-jammy-22.04-arm64-pro-server-*"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}


data "aws_ami" "AmazonLinux"{
    owners = ["amazon"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["al2023-ami-2023.3.20240205.2-kernel-*"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}
