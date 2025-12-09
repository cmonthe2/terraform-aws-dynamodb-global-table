output "table_name" {
  value = aws_dynamodb_table.primary.name
}
output "table_arn" {
  value = aws_dynamodb_table.primary.arn
}
output "table_stream_arn" {
  value = aws_dynamodb_table.primary.stream_arn
}   