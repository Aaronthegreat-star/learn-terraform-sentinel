terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.26.0"
    }
  }
}

terraform {
  required_version = ">= 0.15"

  backend "remote" {
    organization = "Aaronhood"  

    workspaces {
      name = "learn-terraform-sentinel"  
    }
  }
}
 

