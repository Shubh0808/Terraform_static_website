output "s3_website_url" {
  value = "http://${aws_s3_bucket.static_site.bucket}.s3-website-${var.region}.amazonaws.com"
}

