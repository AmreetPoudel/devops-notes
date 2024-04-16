terraform {
  backend "s3" {
    bucket = "amrit-tf-test-bucket"
    key    = "amrit-poudel/terraform.tfstate"
    region = "ap-south-1"
    # dynamodb_table = "terraform-lock"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}
