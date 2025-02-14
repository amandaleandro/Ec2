provider "aws" {
  region = var.region
}


resource "aws_vpc" "vpcExampleSimple" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.vpc
  }
}

# Criar a Subnet
resource "aws_subnet" "subnetExampleSimple" {
  vpc_id            = aws_vpc.var.vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a" 

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
