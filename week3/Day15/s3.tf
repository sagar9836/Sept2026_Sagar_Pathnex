provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "PathnexBucket" {
  bucket = "pathnex-devops-bucket"

  tags = {
    Name = "PathnexBucket"
  }
}