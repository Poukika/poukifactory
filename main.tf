terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "eu-west-3"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0ebd2bf0042bb3e85"
  instance_type          = "t2.medium"
  key_name               = "poukifactory_keypair"
  user_data              = file("user_data.sh")
  subnet_id              = aws_subnet.poukifactory_subnet.id
  vpc_security_group_ids = [aws_security_group.poukifactory_sg.id]

  tags = {
    Name = "poukifactory-instance"
  }
}
