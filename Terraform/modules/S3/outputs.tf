output "s3_bucket" {
  description = "The name of the bucket"
  value       = aws_s3_bucket.bucket.id
}

output "aws_bucket_arn" {
  description = "The ARN of the s3 bucket"
  value       = aws_s3_bucket.bucket.arn

}