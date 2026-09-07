terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "Pathnex-EC2" {
    ami           = "ami-0c0xyz"
    instance_type = "t3.micro"
    
    tags = {
        Name = "Pathnex-EC2"
    }
}