output "pathnex_ip" {
  description = "Public IP address of the Pathnex server."
  value       = aws_instance.PathnexServer.public_ip
}
