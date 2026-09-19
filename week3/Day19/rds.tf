terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_db_instance" "PathnexRDS" {
  allocated_storage      = 20
  engine                 = "mysql"
  instance_class         = "db.t3.micro"
  username               = "admin"
  password               = var.db_password
  skip_final_snapshot    = true
}

variable "db_password" {
  description = "Password for the Pathnex RDS administrator. Supply this through a secret variable or TF_VAR_db_password."
  type        = string
  sensitive   = true
}
