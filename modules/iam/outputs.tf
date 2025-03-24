output "eks_node_role_arn" {
  value = aws_iam_role.eks_node_role.arn
}
output "eks_iam_role_arn" {
  description = "IAM Role ARN for EKS cluster"
  value       = aws_iam_role.eks_cluster_role.arn
}
