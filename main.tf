module "networking" {
    source = "./modules/networking"
}

module "iam" {
    source = "./modules/iam"
}

module "containers" {
    source = "./modules/containers"
    ecs_iam_instance_profile_name = module.iam.ecs_iam_instance_profile_name
    public_subnet_1_id = module.networking.public_subnet_1_id
    public_subnet_2_id = module.networking.public_subnet_2_id
    ecs_instance_sg_name = module.networking.ecs_instance_sg_name
}