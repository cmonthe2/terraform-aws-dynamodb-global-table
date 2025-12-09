

resource "aws_dynamodb_table" "primary" {
  provider       = aws.src
  name           = var.table_name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  replica {
    region_name = var.destination_region
  }

  stream_enabled   = true
  stream_view_type = var.stream_view_type
  tags             = var.tags
}
