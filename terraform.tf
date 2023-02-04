terraform {
  required_providers {
    cloudflare = {
      source  = "hashicorp/cloudflare"
      version = "3.33.1"
    }
  }
  backend "s3" {
    profile        = "personal"
    encrypt        = true
    bucket         = "680235478471-terraform-state"
    key            = "cloudflare/team/terraform.tfstate"
    dynamodb_table = "dynamodb-state-lock"
    region         = "eu-west-2"
  }
}
