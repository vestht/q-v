# Resource: public_nacl
resource "aws_network_acl" "public_nacl" {
    vpc_id = aws_vpc.vpc.id

    tags = {
        Name = "VESTHT-VPC-PUBLIC-NACL"
    }
}

# Resource: private_nacl
resource "aws_network_acl" "private_nacl" {
    vpc_id = aws_vpc.vpc.id

    tags = {
        Name = "VESTHT-VPC-PRIVATE-NACL"
    }
}