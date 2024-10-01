resource "aws_eip" "elasticip" {
  instance = aws_instance.web_ms.id
}

output "EIP" {
  value = aws_eip.elasticip.public_ip
}

variable "ingressrules" {
  type    = list(number)
  default = [80, 443]
}