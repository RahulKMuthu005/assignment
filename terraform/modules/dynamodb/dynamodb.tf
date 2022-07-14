resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
 name = "terraform_lock_state"
 hash_key = "LockID"
 read_capacity = 20
 write_capacity = 20
 attribute {
   name = "LockID"
   type = "S"
 }

 tags = {
   Name = "terraform_lock_state"
 }
}   