terraform {
  backend "s3" {
    bucket = "bidgely-terraform-states-mum"
    dynamodb_table = "terraform_lock_state"
    key    = "dev/ec2keypair/ec2keypair.tfstate"
    region = "ap-south-1"
    profile = "nonprod"
  }
}
