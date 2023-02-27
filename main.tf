variable "fake_sensitive_variable" { 
	default = "foo"
	description = "sensitive decsription"
	sensitive = true 
}

output "fake_ssh" {
	value = <<-EOT
	-----BEGIN RSA PRIVATE KEY-----
	MIICXAIBAAKBgQCsTNtPzYFzn/DcBi8mtcypKVq7G0ZTpyE8GP4wKKG+9bbCSoff
	aZTnu6uL16lITaMlg+YndzQUNSzxnET4YEdjYJbGJ3VXwM6ZTNbYgHtzl3artHaz
	T3LPFKD5J6edrJ0JGpZD1DqtG69cSsEJaf1qzUreKSo9aRMiHhcYGCDl5wIDAQAB
	AoGALTThGdgWjeq5/FCXEHYEo6GZD5yBYDNqkeUQ1Dvk7EB12hZJ/gEqs35W7RMB
	dFoCYzZvLY2mGWM2TpIsumowcGD3YDK20eT3Du61Mk2/uuXlTKrY/Jh2+MiZ96GX
	y7uqsXAF7lGMa7tbR9hXaGehm2xxAz2zSD8/xO1hLq9V3hECQQDjorFpDwJbH2es
	Nl9MSCZG5lKuEx6GweXOl3i2KiwE1XGyEBUmiurw5UFJBJ/BTCKhcDuguk561k68
	8/y1Of2PAkEAwcUIR/cNHnIcFoItFQY569BA9rO/KdteRS1kstPKMA76Y2WtOEDl
	22vNNRxihulOCVZI7RKZ1mbOr/9cHKMWKQJALYWxmOLpg7OKFgRhlm2vSepximJE
	boqEHIZqG3Pfja/ppsRUlnqddUNDhQipsgw5uLMrGX9ohmQpJtxcIxnPvQJAW608
	GMhjVZdJgMDAUaUrfE2Anvg2JriaZoJulUks7QX5I1P025ug5OqhIVK3rvrtJ+/B
	+yCE1nK3sX9Q9l+W2QJBALzVIg0ooN/m8rnARM9r0EnodR6WiMt+t1FT7Xv8oDrw
	lKBRI0BBBPlPKK6n+ZMPegFn0XqjDbx7tkHG92xluWI=
	-----END RSA PRIVATE KEY-----

	EOT
}

resource "null_resource" "cluster" {
}
