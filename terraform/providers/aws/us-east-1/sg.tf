resource "aws_security_group" "lamp-sg" {
  name        = "lamp-http-https-sg"
  description = "Allow in HTTP and HTTPS."
}

resource "aws_security_group_rule" "lamp-in-http" {
  from_port         = 80
  protocol          = "TCP"
  security_group_id = aws_security_group.lamp-sg.id
  to_port           = 80
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "lamp-in-https" {
  from_port         = 443
  protocol          = "TCP"
  security_group_id = aws_security_group.lamp-sg.id
  to_port           = 443
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "lamp-out" {
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.lamp-sg.id
  to_port           = 0
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group" "lamp-ssh-sg" {
  name        = "lamp-ssh-sg"
  description = "Allow in SSH access for developers."
}

resource "aws_security_group_rule" "lamp-in-ssh" {
  from_port         = 22
  protocol          = "TCP"
  security_group_id = aws_security_group.lamp-ssh-sg.id
  to_port           = 22
  type              = "ingress"
  cidr_blocks       = var.dev_cidr_blocks
}
