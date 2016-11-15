resource "aws_security_group" "MY-FIRST-SG" {
  name        = "MY-FIRST-SG"
  description = "MY-FIRST-SG"
  vpc_id      = "vpc-ef2d468b"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name       = "MY-FIRST-SG"
    Script     = "Terraform"
  }
}
