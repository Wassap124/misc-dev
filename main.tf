variable "aws_default_region" { 
	default = "first line\nsecond line\nt\ttabbed third line"
	description = "AWS default region."
}

variable "fake_sensitive_variable" { 
	default = "foo"
	description = "sensitive decsription"
	sensitive = true 
}

output default_region {
	value = var.aws_default_region
}
