module "linux-study-sg" {
  source      = "terraform-aws-modules/security-group/aws/"
  name        = "linux-study-sg"
  description = "Security group for linux-study VPC"
  vpc_id      = module.linux-study-vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
}