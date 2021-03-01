resource "aws_db_instance" "mydb" {
  allocated_storage      = 20
  engine                 = var.engine
  identifier             = var.identifier
  storage_type           = var.storage_type
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  name                   = var.name
  username               = var.username
  password               = var.password
  parameter_group_name   = var.parameter_group_name
  port                   = var.port
  availability_zone      = data.aws_availability_zones.available.names[2]
  db_subnet_group_name   = aws_db_subnet_group.default.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  skip_final_snapshot    = true

  tags = {
    Name = "my_database_instance"
  }
}