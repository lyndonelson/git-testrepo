resource "aws_security_group" "WebDMZ" {
  name        = "WebDMZ"
  description = "WebDMZ"
  vpc_id      = "vpc-ef2d468b"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name       = "WebDMZ"
    Script     = "Terraform"
  }
}
