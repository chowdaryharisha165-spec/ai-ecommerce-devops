resource "aws_security_group" "devops_sg" {
  name = "ai-ecommerce-sg"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 8080
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

resource "aws_instance" "devops_node" {
  ami                    = "ami-0f5ee92e2d63afc18"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.devops_sg.id]
  tags = {
    Name = "AI-Ecommerce-DevOps-Node"
  }
}
