resource "aws_vpc" "default" {
  cidr_block           = var.cidr
  enable_dns_hostnames = true
  tags = {
    Name = "${var.vpc_name}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.subnet_1_cidr
  availability_zone = "us-east-1a"
  tags = {
    Name = "${var.vpc_name}-Subnet-1"
  }

}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.subnet_2_cidr
  availability_zone = "us-east-1b"
  tags = {
    Name = "${var.vpc_name}-Subnet-2"
  }

}

resource "aws_subnet" "subnet3" {
  vpc_id            = aws_vpc.default.id
  cidr_block        = var.subnet_3_cidr
  availability_zone = "us-east-1c"
  tags = {
    Name = "${var.vpc_name}-Subnet-3"
  }

}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.default.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "public" {
  route_table_id = aws_route_table.public.id
  subnet_id      = aws_subnet.subnet1.id
}

resource "aws_security_group" "allow_all" {
  name        = "Allow_All"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.default.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
