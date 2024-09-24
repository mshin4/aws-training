resource "aws_instance" "ec2_ms" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  #count = 3
  tags = {
    Name = "my_first_ec2"
    Org  = var.org_name
  }
  security_groups = [aws_security_group.webtraffic.name]
}