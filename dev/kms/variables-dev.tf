variable "region" {
  description = "region where aws reosurces should be created"
}

variable "profile" {
  description = "aws cli profile to be used"
}

variable "name" {
  type        = string
  description = "The display name of the alias. The name must start with the word `alias` followed by a forward slash (alias/)"
}

variable "enable_key_rotation" {
  default     = true
  type        = string
  description = "Specifies whether key rotation is enabled."
}

variable "is_enabled" {
  default     = true
  type        = string
  description = "Specifies whether the key is enabled."
}


variable "key_usage" {
  default     = "ENCRYPT_DECRYPT"
  type        = string
  description = "Specifies the intended use of the key."
}

variable "deletion_window_in_days" {
  default     = 30
  type        = string
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days."
}
