resource "aws_vpc_ipv4_cidr_block_association" "Subnet_A" {
  vpc_id     = aws_vpc.VPC_A.id
  cidr_block = "10.111.111.0/24" 
  
}

resource "aws_subnet" "Subnet_B" {
  vpc_id     = aws_vpc.VPC_A.id
  cidr_block = "10.111.222.0/24" 
}