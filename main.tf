terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "null_resource" "example" {
}

output "null_resource_id" {
  value = null_resource.example.id
}

output "null_resource_id" {
  value = vars.sub_tf_variable
}
