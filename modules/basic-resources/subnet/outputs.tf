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

output "subnet" {
  description = "Contains all metadata about the subnet"
  value       = aws_subnet.my_subnet
}
