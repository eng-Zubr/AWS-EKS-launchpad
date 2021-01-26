data "aws_eks_cluster" "cluster" {
  name = module.launchpad-cluster.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.launchpad-cluster.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}

module "launchpad-cluster" {
  source  = "terraform-aws-modules/eks/aws"

  cluster_name    = var.project_name
  cluster_version = "1.18"
  subnets         = module.vpc.private_subnets

  vpc_id = module.vpc.vpc_id

  node_groups = {
    first = {
      desired_capacity = 1
      max_capacity     = 10
      min_capacity     = 1

      instance_type = "t2.medium"
    }
  }

  write_kubeconfig   = true
  config_output_path = "./"
}
