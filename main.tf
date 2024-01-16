resource "null_resource" "resource2" {
	count = 4
}

resource "null_resource" "resource3" {
}

module "local_module" {
  source = "./module"
}
