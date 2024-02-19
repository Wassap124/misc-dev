terraform {
}

resource "null_resource" "resource2" {
  count = 4
}

resource "null_resource" "resource3" {
}

