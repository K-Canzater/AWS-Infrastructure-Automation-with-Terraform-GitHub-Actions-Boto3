#Create s3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "dev"
    Project     = "aws-resources"
  }

}



#Set bucket to private or public access
resource "aws_s3_bucket_public_access_block" "access" {
  bucket = aws_s3_bucket.bucket.bucket

  ignore_public_acls      = true
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true



}



#Set up bucket versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.bucket

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Suspended"
  }

}


#Set up bucket encryption

resource "aws_s3_bucket_server_side_encryption_configuration" "encrypt" {
  bucket = aws_s3_bucket.bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }

}
