terraform {
    backend "s3" {
        bucket = "aliciasteen-com-state"
        key = "aliciasteen.com"
        region = "eu-west-1"
    }
}

provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  alias = "useast1"
  region = "us-east-1"
}

module "cloudfront_site" {
  source = "git::https://github.com/aliciasteen/terraform-aws-site.git"
  
  providers {
      aws.useast1 = "aws.useast1"
  }

  website_name = "terraform.aliciasteen.com"
  hosted_zone_id = "ZEH65RG0PBQJ0"
  region = "eu-west-1"
  price_class = "PriceClass_100"
}
