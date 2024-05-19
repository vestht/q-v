# Resource: ecs_instance_sg
resource "aws_security_group" "ecs_instance_sg" {
    name        = "ECS-INSTANCE-SG"
    vpc_id      = aws_vpc.vpc.id

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
