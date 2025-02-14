provider "aws" {
  region = var.region 
}

resource "aws_instance" "example" {
  ami           = var.ami 
  instance_type = "t2.micro" 

  tags = {
    Name = "Ec2-Instance-ExampleSimple"
  }
}
