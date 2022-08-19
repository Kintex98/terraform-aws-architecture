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

variable "availability_zone" {
  type        = string
  description = "The availability zone located within the region"
}

variable "subnet_status" {
  type = string
  description = "The status of the subnet"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block configured for the VPC"
}

variable "vpc_id" {
  type        = string
  description = "ID for the VPC"
}

variable "vpc_name" {
  type = string
  description = "The name of the vpc"
}