output "instance_id" {
  description = "O ID da instância EC2"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "O endereço IP público da instância EC2"
  value       = aws_instance.example.public_ip
}
