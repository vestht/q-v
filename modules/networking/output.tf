# Output: public_subnet_1_id
output "public_subnet_1_id" {
    value = aws_subnet.public_subnet_1.id
}

# Output: public_subnet_2_id
output "public_subnet_2_id" {
    value = aws_subnet.public_subnet_2.id
}

# Output: ecs_instance_sg
output "ecs_instance_sg_name" {
    value = aws_security_group.ecs_instance_sg.name
}
