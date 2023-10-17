module "linux-study-vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = 5.1.2

  name = local.vpc_config.name
  cidr = local.vpc_config.cidr

  azs = local.vpc_config.azs
  #   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets = local.vpc_config.public_subnets

  enable_nat_gateway = local.vpc_config.enable_nat_gateway
  enable_vpn_gateway = local.vpc_config.enable_vpn_gateway

  tags = merge(
    {
      Terraform   = "true"
      Environment = "test"
    },
    local.tags
  )
}