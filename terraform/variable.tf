variable "region" {
  description = "A região da AWS onde a instância será criada"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "O tipo de instância EC2"
  default     = "t2.micro"
}

variable "ami" {
  description = "A imagem AMI para a instância EC2"
  default     = "ami-053a45fff0a704a47 "
}

variable "instance_name" {
  description = "O nome da instância EC2"
  default     = "Ec2-Instance-ExampleSimple"
}
