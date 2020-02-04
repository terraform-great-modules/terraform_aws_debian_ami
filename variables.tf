
variable "debian_version" {
  type = string
  default = "10"
  description = "The debian version to fetch (10 is debian buster - stable at 2020)"
}

variable "debian_arch" {
  type = string
  default = "amd64"
  description = "The debian architecture"
}
