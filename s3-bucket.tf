terraform {
  backend "s3" {
    bucket         = "bucketinfo23"
    key            = "remote-state1"
    region         = "us-east-1"
    dynamodb_table = "lock-remotestate"
  }
}