aws_region       = "us-east-1"
cluster_name     = "ingestion-cluster-dev"
node_instance_type = "t3.medium"
node_min_size    = 1
node_max_size    = 3
node_desired_size = 2
availability_zones = ["us-east-1a", "us-east-1b"]
environment      = "dev"
eks_cluster_role_policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
eks_node_role_name = "eks-node-role"
eks_cluster_role_name = "eks-cluster-role"

eks_node_role_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
  "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
  "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
  "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
]
vpc_cidr = "10.0.0.0/16"