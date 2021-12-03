resource "aws_subnet" "private_prod" {
  count             = var.az_count
  vpc_id            = var.aws_vpc_id
  cidr_block        = "${var.aws_vpc_cidr}${var.private_prod_subnet_cidrs[format("zone%d", count.index)]}"
  availability_zone = element(split(", ", var.aws_azs), count.index)
  tags = merge(
    var.global_tags,
    {
      "Name" = "private_prod_az${count.index + 1}"
    },
    var.private_prod_subnet_tags,
  )
}

variable "aws_vpc_id" {
}

variable "aws_vpc_cidr" {
}

output "aws_subnet_private_prod_ids" {
  value = aws_subnet.private_prod.*.id
}
