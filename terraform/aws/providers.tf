
provider "aws" {
  profile = var.profile
  region  = var.region
}

provider "aws" {
  alias  = "cross_account_provider"
  region = "us-west-1"
  assume_role {
    role_arn = var.cross_account_role_arn
  }
}

terraform {
  backend "s3" {
    encrypt = true
  }
}



