
locals {
	allowed_debian_arch = ["amd64", "arm64"]
}

resource "null_resource" "is_variable_debian_arch_valid" {
  count = contains(local.allowed_debian_arch, var.debian_arch) == true ? 0 : "ERROR: The debian_arch allowed values are only: amd64 or arm64"
}

data "aws_ami" "default" {
  most_recent = "true"

  filter {
    name   = "name"
    values = [join("-", ["debian", var.debian_version, var.debian_arch, "*"])]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["136693071363"]
}
