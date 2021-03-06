resource "aws_instance" "lamp" {
  count = var.ec2_instance_count

  ami = var.ec2_ami
  instance_type = var.ec2_type
  vpc_security_group_ids = [
    aws_security_group.lamp-sg.id,
    aws_security_group.lamp-ssh-sg.id,
  ]

  key_name = aws_key_pair.dev_key.key_name

  tags = {
    Name = "lamp-${count.index}"
  }
}