locals {
  vpc_name            = "${var.Team}-vpc"
  private_subnet_name = "private-${local.vpc_name}"
  public_subnet_name  = "public-${local.vpc_name}"
  public_route_table  = "public_rt"
  private_route_table = "private_rt"
  igw_name            = "${local.vpc_name}-igw"
  ngw_name            = "${local.vpc_name}-ngw"
}