resource "aws_route_table" "dougs-route-table" {
  vpc_id = aws_vpc.VPC_A.id

  route {
    cidr_block = "10.111.111.0/24"
    gateway_id = aws_internet_gateway.VPC_A-gw.id
  }

  route {
    cidr_block = "10.111.222.0/24"
    gateway_id = aws_internet_gateway.VPC_A-gw.id
    }
    
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.VPC_A-gw.id
    }

  tags = {
    Name = "dougs-route-table"
  }
}