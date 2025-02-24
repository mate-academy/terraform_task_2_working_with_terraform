output "s3_object_id" {
  value = aws_s3_object.object.id
}

output "s3_object_url" {
  value = "https://${aws_s3_bucket.bucket.id}.s3.${aws_s3_bucket.bucket.region}.amazonaws.com/${aws_s3_object.object.key}"
}
