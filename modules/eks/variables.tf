variable "cluster_name" {}
variable "cluster_role_arn" {}
variable "node_group_name" {}
variable "node_role_arn" {}
variable "subnet_ids" { type = list(string) }
variable "cluster_sg_id" {}
variable "node_sg_id" {}
variable "ssh_key" {}
variable "desired_size" {}
variable "max_size" {}
variable "min_size" {}
variable "instance_types" { type = list(string) }
