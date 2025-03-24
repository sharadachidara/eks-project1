variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "eks_iam_role_arn" {
  description = "IAM Role ARN for EKS cluster"
  type        = string
}
variable "eks_node_role_arn" {
  description = "IAM Role ARN for EKS Node"
  type        = string
}
variable "subnet_ids" {
  description = "List of subnet IDs for EKS nodes"
  type        = list(string)
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS worker nodes"
  type        = string
}

variable "node_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "node_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "node_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}
