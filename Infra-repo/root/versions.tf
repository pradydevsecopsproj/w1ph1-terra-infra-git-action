terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
    }
  }
  # Remote Backend for state file management
  backend "s3" {
    bucket       = "tfstate-dev-root-ap-south-1-7ndsd4-main-bkt" # Need to update bucket detail from "S3_bucket_remote_backend"
    key          = "vpc/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region = var.aws_region
}