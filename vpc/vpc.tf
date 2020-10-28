module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "bhs-vpc1"
  cidr = "10.16.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.16.0.0/20", "10.16.16.0/20", "10.16.32.0/20", "10.16.64.0/20", "10.16.80.0/20", "10.16.96.0/20", "10.16.128.0/20",
"10.16.144.0/20", "10.16.160.0/20"]
  public_subnets  = ["10.16.48.0/20", "10.16.112.0/20", "10.16.176.0/20"]
  public_subnet_suffix = "web"

  enable_nat_gateway = true
  single_nat_gateway = false
  one_nat_gateway_per_az = true
  #IPv6 Settings
  enable_ipv6                     = true
  assign_ipv6_address_on_creation = true
  public_subnet_ipv6_prefixes   = [03, 07, 11]
  private_subnet_ipv6_prefixes  = [00,01, 02, 04,05,06,08, 09, 10]
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
