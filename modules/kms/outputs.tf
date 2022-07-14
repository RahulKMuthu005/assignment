output "kms_key_arn" {
  value       = aws_kms_key.this.arn
  description = "The Amazon Resource Name (ARN) of the key."
}

output "kms_key_id" {
  value       = aws_kms_key.this.key_id
  description = "The globally unique identifier for the key."
}

output "kms_alias_arn" {
  value       = aws_kms_alias.this.arn
  description = "The Amazon Resource Name (ARN) of the key alias."
}

output "kms_alias_target_key_arn" {
  value       = aws_kms_alias.this.target_key_arn
  description = "The Amazon Resource Name (ARN) of the target key identifier."
}
