# Resource: ecs_instance_iam_role
resource "aws_iam_role" "ecs_instance_iam_role" {
    name = "ECS-INSTANCE-IAM-ROLE"

    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [{
            Effect = "Allow"
            Action = "sts:AssumeRole"
            Principal = {
                Service = "ec2.amazonaws.com"
            }
        }]
    })
}

# Resource: ecs_instance_role_policy_attachment
resource "aws_iam_role_policy_attachment" "ecs_instance_role_policy_attachment" {
    role       = aws_iam_role.ecs_instance_iam_role.name
    policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}

# Resource: ecs_instance_profile
resource "aws_iam_instance_profile" "ecs_iam_instance_profile" {
    name = "ECS-INSTANCE-PROFILE"
    role = aws_iam_role.ecs_instance_iam_role.name
}