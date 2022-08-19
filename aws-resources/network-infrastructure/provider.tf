#############################################################################################
#
# You are free to copy and redistribute the material in any medium or format by Khiem Nguyen.
# Attributions not necessary, but are appreciated.
# Author      : Khiem Nguyen (Kintex98)
# Created     : August 17, 2022
# Description : Provider declaration
# Filename    : provider.tf
#
#############################################################################################

# Version lock the AWS provider control for the Terraform provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
  required_version = ">=1.2.7"
}

# Declares the AWS provider
provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Owner       = "Khiem Nguyen"
      Environment = "test"
    }
  }
}

# Grabs the current AWS region
data "aws_region" "current" {}