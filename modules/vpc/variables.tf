variable "vpc_instance_tenancy" {
  type = string
}

variable "vpc_enable_dns_support" {
  type = bool
}

variable "vpc_enable_dns_hostnames" {
  type = bool
}

variable "vpc_enable_classiclink" {
  type = bool
}

variable "vpc_enable_ipv6" {
  type = bool
}

variable "vpc_name" {
  type = string
}

variable "vpc_cidr_base" {
  type = string
  #default = 172.10
}



// variable "global_tags" {
//   description = "AWS tags that will be added to all resources managed herein"
//   type        = map(string)
//   default = {
//     "Author"     = "DevOps Team of Brightech"
//     "Managed By" = "Terraform"
//   }
// }
