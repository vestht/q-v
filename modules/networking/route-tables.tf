# Resource: private_route_table
resource "aws_route_table" "private_route_table" {
	vpc_id = aws_vpc.vpc.id

	tags = {
		Name = "VESTHT-VPC-PRIVATE-RTB"
	}
}

# Resource: public_route_table
resource "aws_route_table" "public_route_table" {
	vpc_id = aws_vpc.vpc.id

	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.internet_gateway.id
	}

	tags = {
		Name = "VESTHT-VPC-PUBLIC-RTB"
	}
}
