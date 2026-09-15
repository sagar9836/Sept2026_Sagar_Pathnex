provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "PathnexVPC" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "Pathnex-VPC"
  }
}

resource "aws_subnet" "PathnexSubnet" {
  vpc_id                  = aws_vpc.PathnexVPC.id
  cidr_block              = "10.10.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Pathnex-Subnet"
  }
}

resource "aws_internet_gateway" "PathnexIGW" {
  vpc_id = aws_vpc.PathnexVPC.id

  tags = {
    Name = "Pathnex-IGW"
  }
}

resource "aws_route_table" "PathnexRouteTable" {
  vpc_id = aws_vpc.PathnexVPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.PathnexIGW.id
  }

  tags = {
    Name = "Pathnex-RouteTable"
  }
}

resource "aws_route_table_association" "PathnexRTA" {
  subnet_id      = aws_subnet.PathnexSubnet.id
  route_table_id = aws_route_table.PathnexRouteTable.id
}

resource "aws_instance" "PathnexEC2" {
  ami           = "ami-xa546gdfg4"
  instance_type = "c5.xlarge"
  subnet_id     = aws_subnet.PathnexSubnet.id

  tags = {
    Name = "Pathnex-EC2"
  }
}