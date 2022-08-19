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

locals {
  public_mapping = var.subnet_status != "public" ? "true" : "false"
}

# aws_subnet.my_subnet
resource "aws_subnet" "my_subnet" {
  availability_zone                              = var.availability_zone
  cidr_block                                     = var.vpc_cidr
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  map_public_ip_on_launch                        = local.public_mapping
  vpc_id                                         = var.vpc_id

  tags = {
    Name = "${var.vpc_name}-${var.subnet_status}-${var.availability_zone}"
  }
}
