module "vpc" {
    source = "../"
region              = "us-east-1"
vpc_cidr_block      = "10.0.0.0/16" # vpc
public_cidr_block1  = "10.0.1.0/24" # public subnet 1
public_cidr_block2  = "10.0.2.0/24" # public subnet 2
public_cidr_block3  = "10.0.3.0/24" # public subnet 3
private_cidr_block1 = "10.0.4.0/24" # private subnet 1
private_cidr_block2 = "10.0.5.0/24" # private subnet 2
private_cidr_block3 = "10.0.6.0/24" # private subnet 3
allocated_storage    = 20
engine               = "mysql"
identifier           = "mydb"
storage_type         = "gp2"
engine_version       = "5.7"
instance_class       = "db.t3.micro"
name                 = "mydb"
username             = "foo"
password             = "foobarbaz"
parameter_group_name = "default.mysql5.7"
port                 = 3306


}
