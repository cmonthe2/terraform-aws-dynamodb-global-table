# terraform-aws-dynamodb-global-table-module

Creates a DynamoDB table with a replica in another region (Global Table).

## Usage

```hcl
module "ddb_global" {
  source = "git::https://github.com/<you>/terraform-aws-dynamodb-global-table-module.git"
  table_name = "my-global-table"
  hash_key = "id"
  source_region = "us-east-1"
  destination_region = "us-west-2"
}
```
