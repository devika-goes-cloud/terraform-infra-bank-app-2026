# AWS Provider
variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS region to deploy resources"
}

# VPC Variables
variable "vpc_name" {
  type        = string
  default     = "eks-vpc"
  description = "Name of the VPC"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}

variable "public_subnets" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  description = "Public subnet CIDRs"
}

variable "availability_zones" {
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
  description = "Availability zones to deploy subnets"
}

# EKS Cluster Variables
variable "eks_cluster_name" {
  type        = string
  default     = "dev-eks"
  description = "Name of the EKS cluster"
}

variable "eks_node_group_name" {
  type        = string
  default     = "dev-eks-node-group"
  description = "Name of the EKS node group"
}

variable "eks_node_instance_types" {
  type        = list(string)
  default     = ["t3.micro"]
  description = "EC2 instance types for the node group"
}

variable "eks_node_desired_size" {
  type        = number
  default     = 2
  description = "Desired number of nodes in the node group"
}

variable "eks_node_max_size" {
  type        = number
  default     = 2
  description = "Maximum number of nodes in the node group"
}

variable "eks_node_min_size" {
  type        = number
  default     = 1
  description = "Minimum number of nodes in the node group"
}

# SSH key for nodes
variable "ssh_key" {
  type        = string
  default     = "terraformkeys"
  description = "SSH key name for EKS node access"
}
