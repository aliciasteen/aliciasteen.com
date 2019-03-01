# description
- Website which is deployed to AWS using Travis. Terraform used can be found https://github.com/aliciasteen/terraform-aws-site

This Terraform creates an S3 bucket, CloudFront distribution, SSL cert and Route53 records. 

The Travis job stores the Terraform in S3, deploys the Terraform and then uploads the site to S3. 

## To deploy
- Fork this repo
- Set up Travis to point to your repo
- Add AWS_ACCESS_KEY_ID and AWS_SECRET_KEY variables to travis
- Replace "bucket: aliciasteen.com" in .travis.yml to a bucket in S3 used to store Terraform state
- Replace "bucket" and "key" in S3 backend section of terraform_deploy.sh
- Replace "website_name" and "hosted_zone_id" in module "cloudfront_site" in terraform_deploy.sh 
- Run Travis pipeline

This repo is currently set up to deploy to aliciasteen.com. 

