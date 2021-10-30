output "ec2_data" {
  value = {
    PublicIps = aws_instance.lamp.*.public_ip,
  }
}