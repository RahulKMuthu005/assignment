terraform {
  backend "s3" {
    bucket = "bidgely-terraform-states-mum"
    dynamodb_table = "terraform_lock_state"
    key    = "demo/vpc/vpc.tfstate"
    region = "ap-south-1"
    profile = "nonprod"
  }
}