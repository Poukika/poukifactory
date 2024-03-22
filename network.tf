## VPC
resource "aws_vpc" "poukifactory_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "poukifactory-vpc"
  }
}

## Subnet
resource "aws_subnet" "poukifactory_subnet" {
  vpc_id                  = aws_vpc.poukifactory_vpc.id
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-3a"
  tags = {
    Name = "poukifactory-subnet",
  }
  depends_on = [aws_vpc.poukifactory_vpc]
}

## Security Group
resource "aws_security_group" "poukifactory_sg" {
  name   = "poukifactory_sg"
  vpc_id = aws_vpc.poukifactory_vpc.id

  ingress {
    from_port   = 15777
    to_port     = 15777
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 15000
    to_port     = 15000
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 7777
    to_port     = 7777
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 15777
    to_port     = 15777
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 15000
    to_port     = 15000
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 7777
    to_port     = 7777
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #  egress {
  #   from_port   = 0
  #  to_port     = 0
  # protocol    = -1
  #cidr_blocks = ["0.0.0.0/0"]
  #}

  tags = {
    Name = "poukifactory-sg"
  }
}
