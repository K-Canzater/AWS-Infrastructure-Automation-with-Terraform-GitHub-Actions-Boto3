variable "bucket_name" {
  description = "The name of the S3 Bucket"
  type        = string

}

variable "enable_versioning" {
  description = "Enable or disable versioning for the bucket"
  type        = bool
}
