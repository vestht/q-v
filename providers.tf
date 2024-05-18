terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 5.45"
		}
	}

    backend "s3" {
        bucket = "shyamin-tf-be"
        key = "q-v/terraform.tfstate"
        region = "ap-southeast-1"
        dynamodb_table = "terraform-lock"
        encrypt = true
    }
}

provider "aws" {
	region = var.region
	access_key = local.envs["access_key"]
	secret_key = local.envs["secret_key"]

	default_tags {
		tags = {
			Project = "VESTHT-Q5"
			Owner = "me@shyamin.com"
		}
	}
}