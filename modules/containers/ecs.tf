# Resource: app_ecs_cluster
resource "aws_ecs_cluster" "app_ecs_cluster" {
	name = "APP-ECS-CLUSTER"
}

# Resource: ecs_placement_group
resource "aws_placement_group" "ecs_placement_group" {
	name     = "APP-PLACEMENT-GROUP"
	strategy = "spread"
}

# Resource: ecs_launch_template
resource "aws_launch_template" "ecs_launch_template" {
	name = "ECS-LAUNCH-TEMPLATE"
	image_id = "ami-0e6ac2b8d66883414"
	instance_type = "t2.micro"
	vpc_security_group_ids = [ var.ecs_instance_sg_id ]

	iam_instance_profile {
		name = var.ecs_iam_instance_profile_name
	}

	user_data = base64encode(<<-EOF
		#!/bin/bash
		echo ECS_CLUSTER=${aws_ecs_cluster.app_ecs_cluster.name} >> /etc/ecs/ecs.config
		EOF
	)

	monitoring {
		enabled = false
	}
}

# Resource: ecs_autoscaling_group
resource "aws_autoscaling_group" "ecs_autoscaling_group" {
	name = "APP-ECS-AUTOSCALING-GROUP"
	max_size = 3
	min_size = 1
	desired_capacity = 1
	health_check_grace_period = 300
	force_delete = true
	placement_group = aws_placement_group.ecs_placement_group.id
	vpc_zone_identifier = [ var.public_subnet_1_id, var.public_subnet_2_id ]

	launch_template {
		id = aws_launch_template.ecs_launch_template.id
		version = "$Latest"
	}
}
