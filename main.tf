variable "aws_default_region" { 
	default = "us-east-1"
	description = "AWS default region."
	sensitive   = true
}

variable "fake_sensitive_variable" { 
	default = "foo"
	description = "sensitive decsription"
	sensitive = true 
}

resource "null_resource" "null" {}

output default_region {
	value = var.aws_default_region
	sensitive   = true
}
