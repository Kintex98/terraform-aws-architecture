#############################################################################################
#
# You are free to copy and redistribute the material in any medium or format by Khiem Nguyen.
# Attributions not necessary, but are appreciated.
# Author      : Khiem Nguyen (Kintex98)
# Created     : August 17, 2022
# Description : Creates necessary outputs to import in other automation
# Filename    : outputs.tf
#
#############################################################################################

output "vpc_arn" {
  description = "The arn of the VPC"
  value       = module.main_vpc.vpc.arn
}

output "vpc_cidr" {
  description = "The CIDR block range of the VPC"
  value       = module.main_vpc.vpc.cidr_block
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.main_vpc.vpc.id
}
