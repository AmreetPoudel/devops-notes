
resource "aws_s3_bucket" "amrit-s3" {
  bucket = "amrit-tf-test-bucket"

  tags = {
    Name        = "amrit-tf-test-bucket"
    Environment = "Dev"
  }
}