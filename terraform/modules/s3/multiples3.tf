variable "s3_bucket_name" {
   type = list
   default = ["terr-test-bucdgely-1", "terr-test-buc-bidgely2", "terr-test-buc-bidgely3"]
}
resource "aws_s3_bucket" "henrys_bucket" {
   count = "${length(var.s3_bucket_name)}"
   bucket = "${var.s3_bucket_name[count.index]}"
   acl = "private"
   versioning {
      enabled = true
   }
   force_destroy = "true"
}
