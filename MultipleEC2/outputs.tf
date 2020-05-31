output "publicIP" {
  value = aws_instance.mohammad_instance[0].public_ip
}
