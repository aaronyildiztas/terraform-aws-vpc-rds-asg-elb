resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_cidr_block1
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_cidr_block2
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "public2"
  }
}
resource "aws_subnet" "public3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_cidr_block3
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available.names[2]

  tags = {
    Name = "public3"
  }
}
resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.rt.id
}
resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.rt.id
}
resource "aws_route_table_association" "rta3" {
  subnet_id      = aws_subnet.public3.id
  route_table_id = aws_route_table.rt.id
}