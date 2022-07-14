provider "aws" {
  region = "${var.region}"
  profile = "${var.profile}"
}

module "ec2keypair" {
  source = "../../modules/ec2keypair"
  key_name = "${var.key_name}"
  public_key = "${var.public_key}"
}
