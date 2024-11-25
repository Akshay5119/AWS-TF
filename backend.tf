terraform {
  backend "s3" {
    bucket         = "terraform-tf-state-sbaq"      # S3 bucket name
    key            = "terraform/state/terraform.tfstate"  # Path to store state file in the bucket
    region         = "ap-south-1"                  # Bucket region
    encrypt        = true                          # Encrypt state file using SSE
    dynamodb_table = "terraform-lock-table"        # (Optional) DynamoDB table for state locking
  }
}


