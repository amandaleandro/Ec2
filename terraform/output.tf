output "vpc_id" {
  description = "O ID da VPC"
  value       = aws_vpc.example_vpc.id
}

output "subnet_id" {
  description = "O ID da Subnet"
  value       = aws_subnet.example_subnet.id
}

output "instance_id" {
  description = "O ID da instância EC2"
  value       = aws_instance.example_instance.id
}

output "public_ip" {
  description = "O endereço IP público da instância EC2"
  value       = aws_instance.example_instance.public_ip
}
output "vpc_id" {
  description = "O ID da VPC"
  value       = aws_vpc.vpcExampleSimple.id

}