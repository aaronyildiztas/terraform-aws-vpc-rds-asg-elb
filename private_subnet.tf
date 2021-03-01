resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr_block1

  tags = {
    Name = "private1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_cidr_block2
  availability_zone = data.aws_availability_zones.available.names[3]

  tags = {
    Name = "private2"
  }
}
resource "aws_subnet" "private3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_cidr_block3
  availability_zone = data.aws_availability_zones.available.names[5]

  tags = {
    Name              = "private3"
    availability_zone = data.aws_availability_zones.available.names[5]
  }
}
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw.id
  }
  tags = {
    Name = "Private_rt"
  }
}
resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.private_rt.id
}
resource "aws_route_table_association" "private3" {
  subnet_id      = aws_subnet.private3.id
  route_table_id = aws_route_table.private_rt.id
}