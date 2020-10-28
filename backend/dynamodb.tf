module "dynamodb_table" {
  source   = "terraform-aws-modules/dynamodb-table/aws"
  name     = "terraform-locks"
  hash_key = "LockID"
  attributes = [
    {
      name = "LockID"
      type = "S"
    }
  ]
  tags = {
    Terraform   = "true"
    Environment = "staging"
  }
}
