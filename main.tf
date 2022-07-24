provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ramana" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ramana-sg.id]



tags = {
    Name = "ramanaserver"
  }
}
resource "aws_security_group" "ramana-sg" {
  name = "ramana-security-mhr"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
