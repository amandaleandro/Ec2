variable "region" {
  description = "A região da AWS onde os recursos serão criados"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "O tipo de instância EC2"
  default     = "t2.micro"
}

variable "ami" {
  description = "A imagem AMI para a instância EC2"
  default     = "ami-053a45fff0a704a47" 
}

variable "instance_name" {
  description = "O nome da instância EC2"
  default     = "ExampleInstance"
}
variable "vpc" {
    description = "O nome da VPC"
    default     = "vpcExampleSimple"
  
}
variable "subnet" {
    description = "O nome da Subnet"
    default     = "subnetExampleSimple"
  
}