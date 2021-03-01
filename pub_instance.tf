resource "aws_instance" "web" {
  ami                         = data.aws_ami.centos.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  availability_zone           = data.aws_availability_zones.available.names[0]
  key_name                    = aws_key_pair.testkey.key_name
  subnet_id                   = aws_subnet.public1.id
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]


  tags = {
    Name = "Public-Subnet-ec2"
  }
}