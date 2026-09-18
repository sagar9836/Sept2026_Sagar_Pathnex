resource "aws_instance" "PathnexServer" {
  ami           = "ami-0abcd1234abcd1234"
  instance_type = var.instance_type
}
