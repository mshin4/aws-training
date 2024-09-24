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

