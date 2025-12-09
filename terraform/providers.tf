
terraform {
  required_version = ">= 1.8.0"

  backend "s3" {
    bucket         = "tfstate-cif0ip"
    key            = "cmonthe2/dynamodb/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  alias = "us-east-1"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}


provider "aws" {
  alias = "us-west-2"
  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}
