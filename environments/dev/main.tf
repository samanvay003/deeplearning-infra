provider "aws" {
  region = var.region
}

module "vpc" {
  source    = "github.com/samanvay003/terraform-modules//vpc?ref=master"
  region    = var.region
  vpc_cidr  = var.vpc_cidr
  vpc_name  = "deeplearning-vpc"
}

module "eks" {
  source            = "github.com/samanvay003/terraform-modules//eks?ref=master"
  region            = var.region
  cluster_name      = var.cluster_name
  subnet_ids        = module.vpc.public_subnets
  private_subnet_ids = module.vpc.private_subnets
  desired_size      = var.desired_size
  max_size          = var.max_size
  min_size          = var.min_size
  instance_types    = var.instance_types #testing-again
}
