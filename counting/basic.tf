resource "aws_instance" "count_ms" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  count = 2
}