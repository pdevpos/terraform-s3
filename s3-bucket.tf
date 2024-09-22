terraform {
  backend "s3" {
    bucket         = local.bucket
    key            = local.key
    region         = local.region
    dynamodb_table = local.dynamodb_table
  }
}