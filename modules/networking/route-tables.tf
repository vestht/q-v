resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "VESTHT-VPC-PRIVATE-RTB"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "VESTHT-VPC-PUBLIC-RTB"
  }
}
