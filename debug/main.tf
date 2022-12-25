terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "alon-inc"
    workspaces {
      prefix = "no-trusts-given-bootstrap-"
    }
  }
}

output "workspace_name" {
  value = terraform.workspace
}

# terraform {
#   backend "remote" {
#     hostname = "backend-pr10487.api.dev.env0.com"
#     organization = "13b74860-fd60-402e-95c4-1febbf0cc954.d58460a8-9feb-4ea3-b2ca-84be62db6c75"

#     workspaces {
#       name = "this-is-remote-backend-workspace-name"
#     }
#   }
# }

# terraform {
#   required_version = "~>1.3.1"
#   backend "remote" {
#     hostname     = "backend.api.env0.com"
#     organization = "c525c196-51d4-44d1-97c0-5b6d1a3a9520.329e45c0-a438-43f9-966c-c812bf29e865"

#     workspaces {
#       prefix = "no-trusts-given-bootstrap-"
#     }
#   }
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.18"
#     }
#   }
# }

# locals {

#   default_tags = {
#     "Creator"   = "terraform"
#     "Repo"      = var.repo
#     "Env"       = var.env
#     "Workspace" = terraform.workspace
#   }
# }

# provider "aws" {
#   # Configuration options
#   default_tags {
#     tags = local.default_tags
#   }
# }
