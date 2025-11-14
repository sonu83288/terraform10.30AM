provider "aws" {
    region = "us-west-2"
  
}

provider "aws" {
    region = "us-east-1"
    alias = "oregon"
    profile = "chittadeep"
  
}