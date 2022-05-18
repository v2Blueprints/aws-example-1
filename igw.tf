resource "aws_internet_gateway" "VPC_A-gw" {
  vpc_id = aws_vpc.VPC_A.id
  
  tags = {
    Name = "VPC_A-gw"
  }
}