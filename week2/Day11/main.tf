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

resource "aws_instance" "PathnexServer" {
    ami          = "ami-0c55b159cbfafe1f0"
    instance_type = "r5.2xlarge"

    tags = {
        Name = "Pathnex-Output-EC2"
    }
}

output "PathnexPublicIP" {
    value = aws_instance.PathnexServer.public_ip
}