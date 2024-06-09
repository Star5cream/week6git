output "giorno-ip" {
  value = aws_lightsail_instance.custom.public_ip_address
}
output "mista" {
  value = aws_lightsail_instance.custom.username
}