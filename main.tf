# Terraform HCL
# Guidliness to provision S3 bucket with terraform
#first step url: https://registry.terraform.io/providers/hashicorp/aws/latest/docs

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
#Second step: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

# Your credentials to access the AWS console
provider "aws" {
  region = "us-east-1"
  access_key = "Put your access key here"
  secret_key = "Put your secert key here"

 }

resource "aws_s3_bucket" "amazing_bucket" {
  bucket = "my-lende-bucket"

  tags = {
    Name        = "lende-init-bucket"
    Environment = "Dev"
  }
}
