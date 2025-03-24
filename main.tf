module "iam" {
  source        = "./modules/iam"
  eks_node_role_name              = var.eks_node_role_name
  eks_cluster_role_name           = var.eks_cluster_role_name
  eks_node_role_policy_arns       = var.eks_node_role_policy_arns
  eks_cluster_role_policy_arn     = var.eks_cluster_role_policy_arn
}


module "vpc" {
  source             = "./modules/vpc" 
  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones

}
module "eks" {
  source            = "./modules/eks"
  cluster_name      = var.cluster_name
  subnet_ids        = module.vpc.private_subnets
  eks_node_role_arn = module.iam.eks_node_role_arn
  eks_iam_role_arn  = module.iam.eks_iam_role_arn 
  node_instance_type = var.node_instance_type
  node_min_size      = var.node_min_size
  node_max_size      = var.node_max_size
  node_desired_size  = var.node_desired_size
}
