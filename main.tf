resource "null_resource" "resource1" {
	count = 4
}

resource "null_resource" "resource2" {
}

module "local_module" {
  source = "./module"
}
