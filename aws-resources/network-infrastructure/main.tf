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

# module.main_vpc.aws_vpc.my_vpc
module "main_vpc" {
  source = "../../modules/basic-resources/vpc"

  vpc_cidr = "10.${random_integer.vpc_cidr_block.result}.0.0/16"
  vpc_name = "vpc-${random_integer.vpc_cidr_block.result}"
}

# all available availability zones
data "aws_availability_zones" "available" {
  state = "available"
}

# grabs subnets up to a limit
locals {
  availability_zones = slice(data.aws_availability_zones.available.names, 0, 3)
}

# random_integer.public_subnet_cidr
resource "random_integer" "public_subnet_cidr" {
  min = 0
  max = 255
}

# generates a random cidr block for the public subnet
locals {
  public_subnet_cidr = "10.${random_integer.vpc_cidr_block.result}.${random_integer.public_subnet_cidr.result}.0/24"
}

# module.public_subnet.aws_subnet.my_subnet
module "public_subnet" {
  source = "../../modules/basic-resources/subnet"

  availability_zone = local.availability_zones[0]
  subnet_status     = "public"
  vpc_cidr          = local.public_subnet_cidr
  vpc_name          = "vpc-${random_integer.vpc_cidr_block.result}"
  vpc_id            = module.main_vpc.vpc.id
}
