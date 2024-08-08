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


module "route_tables" {
  source                     = "./modules/route_tables"
  vpc_id                     = module.vpc.vpc_id
  vpc_default_route_table_id = module.vpc.vpc_default_route_table_id
  internet_gateway_id        = module.internet_gateway.internet_gateway_id
  public_subnet_ids          = module.subnets.public_subnet_ids
  private_subnet_ids         = module.subnets.private_subnet_ids
  project_name               = var.project_name
  environment                = var.environment
}
