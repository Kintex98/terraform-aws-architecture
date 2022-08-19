#############################################################################################
#
# You are free to copy and redistribute the material in any medium or format by Khiem Nguyen.
# Attributions not necessary, but are appreciated.
# Author      : Khiem Nguyen (Kintex98)
# Created     : August 17, 2022
# Description : Variables required to initiate the automation
# Filename    : variables.tf
#
#############################################################################################

variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block used to configure the VPC"
}

variable "vpc_name" {
  type        = string
  description = "Name for the VPC"
}
