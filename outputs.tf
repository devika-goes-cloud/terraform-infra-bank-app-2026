# VPC outputs
output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID of the VPC created"
}

output "public_subnet_ids" {
  value       = module.vpc.public_subnet_ids
  description = "List of public subnet IDs"
}

# Security outputs
output "cluster_sg_id" {
  value       = module.security.cluster_sg_id
  description = "Security Group ID for EKS cluster"
}

output "node_sg_id" {
  value       = module.security.node_sg_id
  description = "Security Group ID for EKS nodes"
}

# IAM outputs
output "eks_cluster_role_arn" {
  value       = module.iam.eks_cluster_role_arn
  description = "IAM Role ARN for EKS cluster"
}

output "eks_node_role_arn" {
  value       = module.iam.eks_node_role_arn
  description = "IAM Role ARN for EKS nodes"
}

# EKS outputs
output "eks_cluster_name" {
  value       = module.eks.eks_cluster_name
  description = "Name of the EKS cluster"
}

output "eks_node_group_name" {
  value       = module.eks.eks_node_group_name
  description = "Name of the EKS node group"
}
