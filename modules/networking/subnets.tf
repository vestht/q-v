resource "aws_subnet" "private_subnet_1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.10.0/24"

    tags = {
        Name = "VESTHT-VPC-PRIVATE-SUBNET-1"
    }
}

resource "aws_subnet" "private_subnet_2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.11.0/24"

    tags = {
        Name = "VESTHT-VPC-PRIVATE-SUBNET-2"
    }
}
