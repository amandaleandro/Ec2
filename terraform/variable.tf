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
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_name" {
  description = "O nome da instância EC2"
  default     = "ExampleInstance"
}
