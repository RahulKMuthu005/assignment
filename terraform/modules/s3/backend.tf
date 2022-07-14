terraform {
  backend "s3" {
    bucket = "bidgely-terraform-states-mum"
    dynamodb_table = "terraform_lock_state"
    key    = "demo/s3/s3.tfstate"
    region = "ap-south-1"
    profile = "nonprod"
  }
}
