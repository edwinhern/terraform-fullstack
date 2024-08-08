module "vpc" {
  source       = "./modules/vpc"
  cidr_block   = "192.168.0.0/16"
  project_name = var.project_name
  environment  = var.environment
}

module "internet_gateway" {
  source       = "./modules/internet_gateway"
  vpc_id       = module.vpc.vpc_id
  project_name = var.project_name
  environment  = var.environment
}

module "subnets" {
  source          = "./modules/subnets"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  private_subnets = ["192.168.4.0/24", "192.168.5.0/24", "192.168.6.0/24"]
  project_name    = var.project_name
  environment     = var.environment
}
