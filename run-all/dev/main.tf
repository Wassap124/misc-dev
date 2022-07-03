/* empty file - Terragrunt will generate all resources */

resource "null_resource" "null3" {
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "example" {
	allocated_storage    = 10
	engine               = "mysql"
	engine_version       = "5.7"
	instance_class       = "db.t3.micro"
	name                 = "mydb"
	username             = "foo"
	password             = "foobarbaz"
	parameter_group_name = "default.mysql5.7"
	skip_final_snapshot  = true
}