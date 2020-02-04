
output "ami" {
  value = data.aws_ami.default.image_id
}
output ami_owner {
  value = data.aws_ami.default.owner_id
}

output "default_user" {
  value = "admin"
}
