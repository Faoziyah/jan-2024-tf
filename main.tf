terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "tf-user"
  default_tags {
    tags = {
      "Team"        = var.Team
      "Environment" = var.Environment
    }
  }
}