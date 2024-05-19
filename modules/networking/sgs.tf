# Resource: ecs_instance_sg
resource "aws_security_group" "ecs_instance_sg" {
    name        = "ECS-INSTANCE-SG"
    vpc_id      = aws_vpc.vpc.id

    tags = {
        Name = "ECS-INSTANCE-SG"
    }
}
