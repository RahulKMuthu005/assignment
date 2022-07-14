terraform {
  backend "s3" {
    bucket = "bidgely-terraform-states-mum"
    dynamodb_table = "terraform_lock_state"
    key    = "dev/kms/kms.tfstate"
    region = "ap-south-1"
    profile = "nonprod"
  }
}
