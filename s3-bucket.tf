terraform {
  backend "s3" {
    bucket         = "bucketinfo23"
    key            = "remote-state"
    region         = "us-east-1a"
    dynamodb_table = "lock-remotestate"
  }
}