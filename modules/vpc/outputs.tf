output "vpc_id" {
  value = aws_vpc.eks_vpc.id
}

output "private_subnets" {
  value = aws_subnet.private_subnets[*].id
}
