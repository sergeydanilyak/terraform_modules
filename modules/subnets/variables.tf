variable "az_count" {
  description = "number of active availability zones in VPC"
  default     = "3"
}

variable "private_prod_subnet_cidrs" {
  description = "CIDRs for the private production subnets"
  default = {
    zone0 = ".64.0/21"
    zone1 = ".72.0/21"
    zone2 = ".80.0/21"
    zone3 = ".88.0/21"
  }
}

variable "aws_azs" { #set aws availability zones
  description = "comma separated string of availability zones in order of precedence"
  default     = "us-east-2a, us-east-2b, us-east-2c"
}

variable "private_prod_subnet_tags" {
  description = "Tags to the private production subnets"
  default     = {}
}

variable "global_tags" {
  description = "AWS tags that will be added to all resources managed herein"
  type        = map(string)
  default = {
    "Author"     = "DevOps Team of Brightech"
    "Managed By" = "Terraform"
  }
}
