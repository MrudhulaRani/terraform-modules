module "vpc_1" {
  source = "../vpc"
  vpc-cidr = "${var.vpc_1_cidr}"
}

module "internet_gatewate_1" {
  source = "../internet_gateway"
}

module "route_table_1" {
  source = "../route_table"
}

module "route" {
  source = "../route"
}

module "subnet_1" {
  source = "../subnet"
}
module "route_table_association_1" {
  source = "../route_table_association"
}
module "security_group_1" {
  source = "../security_group"
}
module "security_group_rule" {
  source = "../security_group_rule"
}
module "instance" {
  source = "../instance"
}
