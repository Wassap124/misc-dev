variable "aws_default_region" { 
	default = "us-east-2"
	description = "AWS default region."
}

variable "fake_sensitive_variable" { 
	default = "foo"
	description = "sensitive decsription"
	sensitive = true 
}

resource "null_resource" "null" {}

output default_region {
	value = var.aws_default_region
}
