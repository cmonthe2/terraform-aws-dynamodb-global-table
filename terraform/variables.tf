variable "table_name" {
  description = "The name of the DynamoDB table. "
  type        = string
}
variable "hash_key" {
  description = "The hash key of the DynamoDB table."
  type        = string
}
variable "hash_key_type" {
  description = "The type of the hash key of the DynamoDB table."
  type        = string
  default     = "S"
}
variable "billing_mode" {
  type    = string
  default = "PROVISIONED"
}
variable "read_capacity" {
  type    = number
  default = 5
}
variable "destination_region" {
  type = string
}
variable "stream_view_type" {
  type    = string
  default = "NEW_AND_OLD_IMAGES"
}
variable "tags" {
  description = "tags to be assigned to the DynamoDB table."
  type        = map(string)
  default     = {}
}

