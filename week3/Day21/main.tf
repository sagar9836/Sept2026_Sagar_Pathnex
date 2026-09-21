terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "pathnex" {
  ami           = "ami-123"
  instance_type = "t3.micro"

  tags = {
    Owner = "PathnexStudent"
  }
}
