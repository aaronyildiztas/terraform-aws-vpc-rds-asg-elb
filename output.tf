output "VPC" {
  value = aws_vpc.main.id
}
output "PUBLIC_SUBNETS" {
  value = [
    aws_subnet.public1.id,
    aws_subnet.public2.id,
    aws_subnet.public3.id,
  ]
}
output "PRIVATE_SUBNETS" {
  value = [
    aws_subnet.private1.id,
    aws_subnet.private2.id,
    aws_subnet.private3.id,
  ]
}
output "REGION" {
  value = var.region
}