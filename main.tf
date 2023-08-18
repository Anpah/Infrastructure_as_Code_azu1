# Terraform HCL

provider "aws" {
region = "us-east-1"    
}

resource "aws_s3_bucket" "room2" {
bucket = "room2-azubi-testbucket"

tags = {
Name = "Romm2_bucket"
Environment = "Dev"    
}
}