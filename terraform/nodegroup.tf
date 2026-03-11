module "node_group" {
  source = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"

  cluster_name    = module.eks.cluster_name
  cluster_version = module.eks.cluster_version

  name = "employee-node-group"

  subnet_ids = module.vpc.private_subnets

  instance_types = [var.instance_type]

  min_size     = var.min_nodes
  max_size     = var.max_nodes
  desired_size = var.desired_nodes
}