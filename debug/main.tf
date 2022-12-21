terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "alon-inc"
    workspaces {
      name = "debug"
    }
  }
}

output "workspace_name" {
  value = terraform.workspace
}
