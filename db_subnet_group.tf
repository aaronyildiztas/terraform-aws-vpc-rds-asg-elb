resource "aws_db_subnet_group" "default" {
  name       = "db-subnet-group"
  subnet_ids = [aws_subnet.private1.id, aws_subnet.private2.id]

  tags = {
    Name = "My DB subnet group"
  }
}