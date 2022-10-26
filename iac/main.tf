provider "aws" {
    region = local.config.region
}

locals {
  config = yamldecode(file("${path.cwd}/config.yml"))

  tags = {
    GithubRepo = "bastionsofwill/linux-study"
  }
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.config.name
  cidr = local.config.cidr

  azs             = local.config.azs
#   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = local.config.public_subnets

  enable_nat_gateway = local.config.enable_nat_gateway
  enable_vpn_gateway = local.config.enable_vpn_gateway

  tags = {
    Terraform = "true"
    Environment = "test"
  }
}