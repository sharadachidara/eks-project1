variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
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

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones to use"
  type        = list(string)
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
}

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