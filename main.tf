
module "vpc" {
  source       = "./modules/vpc"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  environment  = var.environment
}

module "internet_gateway" {
  source       = "./modules/internet_gateway"
  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name
  environment  = var.environment
}
