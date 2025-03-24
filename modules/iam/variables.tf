variable "eks_node_role_name" {
  description = "Name of the IAM role for EKS worker nodes"
  type        = string
}

variable "eks_cluster_role_name" {
  description = "Name of the IAM role for the EKS cluster"
  type        = string
}

variable "eks_node_role_policy_arns" {
  description = "List of IAM policies to attach to the EKS worker node role"
  type        = list(string)
}

variable "eks_cluster_role_policy_arn" {
  description = "IAM policy ARN to attach to the EKS cluster role"
  type        = string
}
