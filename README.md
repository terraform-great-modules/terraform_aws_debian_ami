Quick data reference to latest debian image.

For further infos, see https://wiki.debian.org/Cloud/AmazonEC2Image/Buster

# Usage

**IMPORTANT:** The `master` branch is used in `source` just as an example. In your code, do not pin to `master` because there may be breaking changes between releases.
Instead pin to the release tag (e.g. `?ref=tags/x.y.z`).


Usage example:
```
module "debian_ami_buster" {
  source         = "git::https://github.com/terraform-great-modules/terraform_aws_debian_ami?ref=master"
  debian_version = "10"
  debian_arch    = "amd64"
}

resource "aws_instance" "myec2" {
  ami           = debian_ami_buster.ami
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
```
