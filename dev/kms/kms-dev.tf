provider "aws" {
  region = "${var.region}"
  profile = "${var.profile}"
}

module "kms" {
  source = "../../modules/kms"
  is_enabled = "${var.is_enabled}"
  name = "${var.name}"
  enable_key_rotation = "${var.enable_key_rotation}"
}
