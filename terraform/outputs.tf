output "server_public_ip" {
  value = aws_instance.devops_node.public_ip
}
