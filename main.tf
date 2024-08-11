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

variable "sub_tf_variable" {
  type        = string   # The data type (string, number, bool, list, map, etc.)
  default     = "default_value"  # Optional, provides a default value
}


output "output_for_pismo" {
  value = var.sub_tf_variable
}
