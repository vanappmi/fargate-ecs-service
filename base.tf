terraform {
  backend "s3" {
    bucket = "foo-services-terraform-state"
    key    = "bar"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"
}
