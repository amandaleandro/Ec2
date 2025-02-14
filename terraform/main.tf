provider "aws" {
  region = var.region
}

# Criar a VPC
resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example_vpc"
  }
}

# Criar a Subnet
resource "aws_subnet" "example_subnet" {
  vpc_id            = aws_vpc.example_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a" # Altere conforme necessário

  tags = {
    Name = "example_subnet"
  }
}

# Criar a Instância EC2
resource "aws_instance" "example_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.example_subnet.id

  tags = {
    Name = var.instance_name
  }
}
