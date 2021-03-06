terraform {
  required_version = ">=0.12.9, <0.13"

  backend "remote" {
    organization = "femiwiki"

    workspaces {
      name = "aws"
    }
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  version = ">= 2.30.0, < 3"
}

provider "aws" {
  alias   = "us"
  region  = "us-east-1"
  version = ">= 2.30.0, < 3"
}
