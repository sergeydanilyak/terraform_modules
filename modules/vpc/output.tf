output "vpc_cidr_base" {
  value = var.vpc_cidr_base
}

output "aws_vpc_id" {
  value = aws_vpc.default.id
}

output "aws_vpc_cidr" {
  value = aws_vpc.default.cidr_block
}
