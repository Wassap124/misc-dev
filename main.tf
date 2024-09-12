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
  count = 3
}

output "null_resource_id" {
  value = null_resource.example[0].id
}

variable "sub_tf_variable" {
  type        = string   # The data type (string, number, bool, list, map, etc.)
  default     = "default_value"  # Optional, provides a default value
}


output "output_for_pismo" {
  value = var.sub_tf_variable
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "alon-inc"

    workspaces {
      name = "my-app-prod"
    }
  }
}
