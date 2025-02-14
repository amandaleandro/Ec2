provider "aws" {
  region = var.region 
}

resource "aws_instance" "example" {
  ami           = var.ami 
  instance_type = "t2.micro" 
  subnet_id = subnet-0d712e31945668d8b

  tags = {
    Name = "Ec2-Instance-ExampleSimple"
  }
}
