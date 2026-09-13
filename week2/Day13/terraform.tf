resource "aws_instance" "BadEC2" {
  ami           = "ami-123"
  instance_type = "c5.large"

  tags = {
    Name = "Broken"
  }
}