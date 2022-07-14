resource "aws_s3_bucket" "onebucket" {
   bucket = "storestate-terraform-s3"
   acl = "private"
   versioning {
      enabled = true
   }
   tags = {
     Environment = "Test"
   }
}
