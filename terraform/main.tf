module "aws_vpc" {
 source = "./modules/aws_vpc"
 region = var.region
 vpc_cidr_block = var.vpc_cidr_block  
}