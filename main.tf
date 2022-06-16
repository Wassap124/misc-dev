variable "my_var" { 
	default = "first line\nsecond line\nt\ttabbed third line"
}

variable "fake_sensitive_variable" { 
	default = "foo"
	description = "sensitive decsription"
	sensitive = true 
}

output "some output" {
	value = "first line\nsecond line\nt\ttabbed third line"
}
