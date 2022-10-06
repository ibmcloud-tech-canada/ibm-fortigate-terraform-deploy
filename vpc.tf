data "ibm_is_vpc" "vpc1" {
  name = var.vpc
}
data "ibm_is_subnet" "subnet1" {
  identifier = var.subnet1
}

data "ibm_is_subnet" "subnet2" {
  identifier = var.subnet2
}

data "ibm_is_security_group" "fgt_security_group" {
  name = var.security_group
}
