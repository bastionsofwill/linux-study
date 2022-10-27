module "linux-study-ec2" {
  source = "terraform-aws-modules/ec2-instance/aws"
  #   version = "~> 4.1"
  for_each               = local.ec2_config
  name                   = each.value.name
  ami                    = each.value.ami
  key_name               = each.value.key_name
  monitoring             = each.value.monitoring
  vpc_security_group_ids = split(",", local.sg_id)
  subnet_id              = local.subnet_id
  private_ip             = each.value.private_ip
}

resource "aws_eip" "linux-study-eip" {
  for_each = module.linux-study-ec2
  instance = each.value.id
  vpc      = true
}