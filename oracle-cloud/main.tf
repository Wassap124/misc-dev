provider "oci" {
  # Assumes configuration via environment variables
}

variable "compartment_ocid" {
  description = "Compartment OCID"
  type        = string
  default     = "ocid1.tenancy.oc1..aaaaaaaa2olq7iivwq3kbwnqfhiefpyyllxgkmnhbm7wbgmy73fprk5jozaq"
}

resource "oci_objectstorage_bucket" "simple_bucket" {
  name           = "my-simple-bucket"
  compartment_id = var.compartment_ocid
  storage_tier   = "Standard" # Options: "Standard" or "Archive"
  namespace      = "idv6ckw454oo"
}
