# Resource: private_subnet_1
resource "aws_subnet" "private_subnet_1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.10.0/24"

    tags = {
        Name = "VESTHT-VPC-PRIVATE-SUBNET-1"
    }
}

# Resource: private_subnet_2
resource "aws_subnet" "private_subnet_2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.11.0/24"

    tags = {
        Name = "VESTHT-VPC-PRIVATE-SUBNET-2"
    }
}

# Resource: public_subnet_1
resource "aws_subnet" "public_subnet_1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.20.0/24"

    tags = {
        Name = "VESTHT-VPC-PUBLIC-SUBNET-1"
    }
}

# Resource: public_subnet_2
resource "aws_subnet" "public_subnet_2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.21.0/24"

    tags = {
        Name = "VESTHT-VPC-PUBLIC-SUBNET-2"
    }
}