Quick data reference to latest debian image.

For further infos, see https://wiki.debian.org/Cloud/AmazonEC2Image/Buster

Usage example:
```
module "debian_ami_buster" {
  source         = "git::https://github.com/
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
