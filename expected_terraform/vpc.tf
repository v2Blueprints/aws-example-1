resource "aws_vpc" "VPC_A" {
  cidr_block       = "10.111.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = true
  enable_dns_hostnames = false
  
  tags = {
    Name = "VPC_A"
  }
}