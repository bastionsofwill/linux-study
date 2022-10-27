provider "aws" {
  region = local.vpc_config.region
}

locals {
  vpc_config = yamldecode(file("./vpc_config.yml"))
  ec2_config = yamldecode(file("./ec2_config.yml"))
  vpc_id     = module.linux-study-vpc.vpc_id
  sg_id      = module.linux-study-sg.security_group_id
  subnet_id  = module.linux-study-vpc.public_subnets[0]
  tags = {
    GithubRepo = "bastionsofwill/linux-study"
  }
}