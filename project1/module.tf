module "vpc1" {
  source = "../vpc"
  vpc-cidr = "${var.vpc-cidr}"
}