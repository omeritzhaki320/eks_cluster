terraform {
  backend s3 {
    bucket = "tfstate-file-for-eks-cluster"
    key    = "terraform.tfstate"
    region = "us-east-1"
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

