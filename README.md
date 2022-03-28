# aws-example-1

#sample deployment on a vpc with two subnets  Will add bits to this


resource "aws_vpc" "something" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "something"
  }
}

resource "aws_subnet" "zone_a" {
  vpc_id     = aws_vpc.something.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Zone a"
  }
}

resource "aws_subnet" "zone_b" {
  vpc_id     = aws_vpc.something.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Zone b"
  }