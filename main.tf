provider "aws" {
  region = var.aws_region
}
resource "aws_security_group" "allow_ssh" {
  name = "docker-ec2-sg"
  description = "Security group for EC2 instance with Docker"
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
