provider "aws" {
  region = var.region
}
# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}
# This line pulls ubuntu ami
data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM *"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["679593333241"] # Canonical
}
output "AZ" {
  value = data.aws_availability_zones.available.names
}

output "AMI" {
  value = data.aws_ami.centos.id
}

