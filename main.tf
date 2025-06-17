module "network" {
    source = "./network"
    region_M = var.region
    vpc_cidr_M = var.vpc_cidr
    public_subnet1_cidr_M = var.public_subnet1_cidr
    public_subnet2_cidr_M = var.public_subnet2_cidr
    private_subnet1_cidr_M = var.private_subnet1_cidr
    private_subnet2_cidr_M = var.private_subnet2_cidr
}