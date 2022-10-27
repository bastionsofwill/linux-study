module "linux-study-sg" {
  source      = "terraform-aws-modules/security-group/aws"
  name        = "linux-study-sg"
  description = "Security group for linux-study VPC"
  vpc_id      = module.linux-study-vpc.vpc_id

  ingress_with_cidr_blocks = [
     {
      from_port   = 0
      to_port     = 65535
      protocol    = "tcp"
      description = "Allow all"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
  egress_with_cidr_blocks = [
     {
      from_port   = 0
      to_port     = 65535
      protocol    = "tcp"
      description = "Allow all"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}