resource "aws_eks_cluster" "eks" {
  name     = var.cluster_name
  role_arn = var.eks_iam_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  depends_on = [var.eks_iam_role_arn]
}

resource "aws_eks_node_group" "eks_nodes" {
  cluster_name    = aws_eks_cluster.eks.name
  node_role_arn   = var.eks_node_role_arn
  subnet_ids      = var.subnet_ids
  instance_types  = [var.node_instance_type]
  scaling_config {
    desired_size = var.node_desired_size
    max_size     = var.node_max_size
    min_size     = var.node_min_size
  }
}