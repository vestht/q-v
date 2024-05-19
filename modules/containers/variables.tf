# Variable: ecs_iam_instance_profile_name
variable "ecs_iam_instance_profile_name" {
  type     = string
  nullable = false
}

# Variable: public_subnet_1_id
variable "public_subnet_1_id" {
  type     = string
  nullable = false
}

# Variable: public_subnet_2_id
variable "public_subnet_2_id" {
  type     = string
  nullable = false
}

# Variable: ecs_instance_sg_name
variable "ecs_instance_sg_id" {
  type     = string
  nullable = false
}
