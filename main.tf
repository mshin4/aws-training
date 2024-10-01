# terraform {
#   cloud {
#     organization = "University-Org"

#     workspaces {
#       name = "training"
#     }
#   }
# }

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "ms_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.my_vpc
    Org  = var.org_name
  }

}

module "ec2_instances" {
  source = "./ec2"
}

module "ec2_instances2" {
  source = "./counting"
}

#### Config driven import

# for instance in ./ec2/ec2.tf
# resource "aws_ebs_volume" "root_volume_web" {
#   availability_zone = "us-east-1a"
#   size              = 5
# }

# resource "aws_volume_attachment" "nonroot_ebs_att_web" {
#   device_name = "/dev/xvdbz"
#   volume_id   = aws_ebs_volume.root_volume_web.id
#   instance_id =  aws_instance.web_ms.id
# }


# how to create multiple instances with different names
# output each name using one block