terraform {
  required_version = ">= 1.3"
}

provider "aws" {
  region = var.region
}

# VPC Module
module "vpc" {
  source         = "./modules/vpc"
  name           = var.vpc_name
  cidr_block     = var.vpc_cidr
  public_subnets = var.public_subnets
  azs            = var.availability_zones
}

# Security Module
module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

# IAM Module
module "iam" {
  source = "./modules/iam"
}

# EKS Module
module "eks" {
  source           = "./modules/eks"
  cluster_name     = var.eks_cluster_name
  cluster_role_arn = module.iam.eks_cluster_role_arn
  node_group_name  = var.eks_node_group_name
  node_role_arn    = module.iam.eks_node_role_arn
  subnet_ids       = module.vpc.public_subnet_ids
  cluster_sg_id    = module.security.cluster_sg_id
  node_sg_id       = module.security.node_sg_id
  ssh_key          = var.ssh_key
  desired_size     = var.eks_node_desired_size
  max_size         = var.eks_node_max_size
  min_size         = var.eks_node_min_size
  instance_types   = var.eks_node_instance_types
}
