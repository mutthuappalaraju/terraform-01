resource "aws_instance" "web" {
  ami           = data.aws_ami.centos8.id
  instance_type = "t2.small"
  tags = {
    Name = "data-source"
  }
}

resource "aws_instance" "raju" {
  ami           = data.aws_ami.ubuntu-pro.id
  instance_type = "t2.small"
  tags = {
    Name = "data-source"
  }
}


resource "aws_instance" "raju-2" {
  ami           = data.aws_ami.AmazonLinux.id
  instance_type = "t2.micro"
  tags = {
    Name = "data-source"
  }
}



