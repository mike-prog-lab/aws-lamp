resource "aws_key_pair" "dev_key" {
  key_name = "lamp-dev-key"
  public_key = var.dev_key
}