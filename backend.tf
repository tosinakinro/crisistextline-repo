terraform {
  backend "s3" {
    bucket         = "backend-tfstate-bucket"
    key            = "crisis-texas-line/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "backend-tfstate-lock"
    encrypt        = true
    }
}