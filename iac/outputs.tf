output "vpc_az" {
  value = module.linux-study-vpc.azs
}
output "vpc_public_subnet" {
  value = module.linux-study-vpc.public_subnets
}
output "vpc_public_subnets_cidr_blocks" {
  value = module.linux-study-vpc.public_subnets_cidr_blocks
}
output "vpc_id" {
  value = module.linux-study-vpc.vpc_id
}
output "sg_id" {
  value = module.linux-study-sg.security_group_id
}
output "sg_name" {
  value = module.linux-study-sg.security_group_name
}
output "ec2_ids" {
  value = module.linux-study-ec2.id
}