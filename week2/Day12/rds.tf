terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_db_instance" "PathnexRDS" {
    allocated_storage   = 20
    engine              = "mysql"
    instance_class     = "db.t3.micro"
    db_name             = "pathnexdb"
    password            = "Pathnex@123"
    skip_final_snapshot = true
}