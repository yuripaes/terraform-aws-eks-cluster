module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public-subnet-1a = module.eks_network.subnet_pub_1a
  public-subnet-1b = module.eks_network.subnet_pub_1b
}

module "managed-node-group" {
  source            = "./modules/managed-node-group"
  cluster_name      = module.eks_cluster.cluster_name
  project_name      = var.project_name
  tags              = local.tags
  private-subnet-1a = module.eks_network.subnet_priv_1a
  private-subnet-1b = module.eks_network.subnet_priv_1b
}

module "aws-load-balancer-controller" {
  source       = "./modules/aws-load-balancer-controller"
  project_name = var.project_name
  tags         = local.tags
}