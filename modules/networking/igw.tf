# Resource: internet_gateway
resource "aws_internet_gateway" "internet_gateway" {
	vpc_id = aws_vpc.vpc.id

	tags = {
		Name = "VESTHT-VPC-IGW"
	}
}