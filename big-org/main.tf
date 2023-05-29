terraform {
  required_providers {
    env0 = {
      source = "env0/env0"
    }
  }
}

# Configure the env0 provider
provider "env0" {
  api_key         = "v4xtbztra5tlcvak"
  api_secret      = "iLE9HdBEXzntIVv-OYWZjAuDIY4ZaBUo"
  organization_id = "28caf8f9-92f6-4731-a6ce-f010da5a78eb"
  api_endpoint    = "https://api-pr12135.dev.env0.com"
}

locals {
  project_count = 1000
}

# Create the 1000 projects
resource "env0_project" "project" {
  count         = local.project_count
  force_destroy = true
  name          = "Project-${count.index + 1}"
  description   = "Project ${count.index + 1} created using Terraform"
}

# # Assign the template to all projects
# resource "env0_template_project_assignment" "assignment" {
#   count = local.project_count

#   project_id  = env0_project.project[count.index].id
#   template_id = "e8195b22-f834-43b1-ba39-ce83eb2de45c"
# }

# # Create one environment in each project
# resource "env0_environment" "environment" {
#   depends_on                 = [env0_template_project_assignment.assignment]
#   count                      = local.project_count
#   approve_plan_automatically = true
#   force_destroy              = true
#   name                       = "Environment-${count.index + 1}"
#   project_id                 = env0_project.project[count.index].id
#   template_id                = "e8195b22-f834-43b1-ba39-ce83eb2de45c"
# }
