# how to create a dependency and multiple instances

resource "aws_instance" "web_ms" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  tags = {
    Name = "web"
    Org  = var.org_name
  }
  security_groups = [aws_security_group.webtraffic.name]
  depends_on = [ aws_instance.db_ms ]
}

# resource "aws_ebs_volume" "root_volume_web" {
#   availability_zone = "us-east-1a"
#   size              = 5
# }

# resource "aws_volume_attachment" "nonroot_ebs_att_web" {
#   device_name = "/dev/xvdbz"
#   volume_id   = aws_ebs_volume.root_volume_web.id
#   instance_id =  aws_instance.web_ms.id
# }

resource "aws_instance" "db_ms" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  count = 2
  tags = {
    Name = "db"
    Org  = var.org_name
  }
  #security_groups = [aws_security_group.webtraffic.name]
}