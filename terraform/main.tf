provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "docker_repo_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "docker-repo-s3-bucket"
    Environment = "dev"
  }
}

resource "aws_s3_bucket" "docker_repo_bucket_2" {
  bucket = "${var.bucket_name}-extra"
  acl    = "private"

  tags = {
    Name        = "docker-repo-s3-bucket-extra"
    Environment = "dev"
  }
}
#test1
