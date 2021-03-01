resource "aws_eip" "eip" {
  vpc = true

}
resource "aws_nat_gateway" "ngw" {
  depends_on    = [aws_internet_gateway.gw]
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public1.id
}