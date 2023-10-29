terraform {
  backend "local" {
    path = "/Users/omer.itzhaki/Desktop/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      CreatedBy = "Terraform"
      StackName = "user-auth-service"
    }
  }
}

