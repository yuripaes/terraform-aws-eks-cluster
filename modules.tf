module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = var.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  public-subnet-1a = module.eks_network.subnet_pub_1a
  public-subnet-1b = module.eks_network.subnet_pub_1b
  tags             = var.tags
}

module "eks_managed_node_group" {
  source            = "./modules/managed-node-group"
  cluster_name      = module.eks_cluster.cluster_name
  project_name      = var.project_name
  tags              = var.tags
  private-subnet-1a = module.eks_network.subnet_priv_1a
  private-subnet-1b = module.eks_network.subnet_priv_1b
}

module "eks_aws_load_balancer_controller" {
  source       = "./modules/aws-load-balancer-controller"
  project_name = var.project_name
  tags         = var.tags
  oidc         = module.eks_cluster.oidc
  cluster_name = module.eks_cluster.cluster_name
}