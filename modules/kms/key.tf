resource "aws_kms_key" "this" {
  is_enabled               = var.is_enabled
  enable_key_rotation      = var.enable_key_rotation
  key_usage = var.key_usage
  deletion_window_in_days  = 30
}

# Add an alias to the key
resource "aws_kms_alias" "this" {
  name          = "alias/${var.name}"
  target_key_id = aws_kms_key.this.key_id
}
