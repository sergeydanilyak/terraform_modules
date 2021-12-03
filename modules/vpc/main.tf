// terraform {
//   required_version = "> 0.15.0"

//   required_providers {
//     aws = {
//       source  = "hashicorp/aws"
//       version = "= 3.7.0"
//     }
//   }
// }

resource "aws_vpc" "default" {
  cidr_block                       = var.vpc_cidr_base
  instance_tenancy                 = var.vpc_instance_tenancy
  enable_dns_support               = var.vpc_enable_dns_support
  enable_dns_hostnames             = var.vpc_enable_dns_hostnames
  enable_classiclink               = var.vpc_enable_classiclink
  assign_generated_ipv6_cidr_block = var.vpc_enable_ipv6

  // tags = merge(
  //   var.,
  //   {
  //     "Name" = var.aws_vpc_name
  //   },
  // )
  // lifecycle {
  //   ignore_changes = [tags]
  // }
}

# output "region" {
#   value = data.provider.aws.region
# }


# resource "vpc" {
#
#   name             = var.aws_vpc_name
#   cidr             = "${var.vpc_cidr_base}.0.0/16"
#   azs              = var.aws_azs
#   private_subnets  = var.private_subnet_cidrs
#   public_subnets   = var.public_subnet_cidrs
#   instance_tenancy = var.vpc_instance_tenancy
#
#   enable_nat_gateway = true
#   enable_vpn_gateway = true

# tags = merge(
#   var.global_tags,
#   {
#     "Name"    = var.aws_vpc_name
#     "Type"    = var.env_type
#     Terraform = "true"
#   },
# )
# lifecycle {
#   ignore_changes = [tags]
# }

# }


# output "aws_vpc_id" {
#   value = aws_vpc.default.id
# }
#
# output "aws_vpc_cidr" {
#   value = aws_vpc.default.cidr_block
# }
