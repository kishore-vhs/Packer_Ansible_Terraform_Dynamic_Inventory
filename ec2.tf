data "aws_ami" "my_ami" {
  most_recent = true
  name_regex  = "^Ansible"
  owners      = ["383181915490"]
}

resource "aws_instance" "srv" {
  count                       = 3
  ami                         = data.aws_ami.my_ami.id
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = var.key
  subnet_id                   = aws_subnet.subnet1.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "Ansible"
  }
}
