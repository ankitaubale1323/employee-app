module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8"

  cluster_name    = var.cluster_name
  cluster_version = "1.29"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_endpoint_public_access = true
  enable_irsa = true

  node_groups = {
    default = {
      desired_capacity = var.desired_nodes
      max_capacity     = var.max_nodes
      min_capacity     = var.min_nodes
      instance_type    = var.instance_type
    }
  }

  tags = {
    Environment = "dev"
  }
}