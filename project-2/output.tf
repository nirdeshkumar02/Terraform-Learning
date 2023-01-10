output "ami_id" {
  value = data.aws_ami.amazon-linux-image.id
}
output "server-ip" {
    value = aws_instance.myapp-server.public_ip
}