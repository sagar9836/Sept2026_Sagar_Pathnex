terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "PathnexEC2" {
  ami           = "ami-0abcd1234abcd1234"
  instance_type = "c6a.12xlarge"

  user_data = <<-EOF
    #!/bin/bash

    yum install -y httpd
    systemctl enable httpd
    systemctl start httpd
  EOF

  tags = {
    Name = "Pathnex-EC2"
  }
}