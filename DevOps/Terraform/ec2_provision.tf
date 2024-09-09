terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-south-1"  # Change to your desired region
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example_server" {
  ami           = "ami-0e86e20dae9224db8"  # Replace with your desired AMI
  instance_type = "t2.micro"
  key_name      = "cmd-kp"  # Key name without .pem extension

  security_groups = [aws_security_group.allow_ssh.name]

  tags = {
    Name = "JacksBlogExample"
  }
}