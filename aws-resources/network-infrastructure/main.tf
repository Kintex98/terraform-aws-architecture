#############################################################################################
#
# You are free to copy and redistribute the material in any medium or format by Khiem Nguyen.
# Attributions not necessary, but are appreciated.
# Author      : Khiem Nguyen (Kintex98)
# Created     : August 17, 2022
# Description : The main module calls to generate an SNS queue
# Filename    : main.tf
#
#############################################################################################

# random_integer.vpc_cidr_block
resource "random_integer" "vpc_cidr_block" {
  min = 0
  max = 255
}

# module.main_vpc.aws_vpc.main_vpc
module "main_vpc" {
  source = "../../modules/basic-resources/vpc"

  vpc_cidr_block = "10.${random_integer.vpc_cidr_block.result}.0.0/16"
  vpc_name       = "vpc-${random_integer.vpc_cidr_block.result}"
}
