resource "aws_s3_bucket" "onebucket" {
   bucket = "bidgely-create-terraform-s3"
   acl = "private"
   versioning {
      enabled = true
   }
   tags = {
     Environment = "Test"
   }
}
