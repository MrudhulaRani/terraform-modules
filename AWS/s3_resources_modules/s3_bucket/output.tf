output "s3_bucket_id" {
  value = "${aws_s3_bucket.s3_bucket.id}"
}
output "s3_bucket_arn" {
  value = "${aws_s3_bucket.s3_bucket.arn}"
}
output "s3_bucket_domine_name" {
  value = "${aws_s3_bucket.s3_bucket.bucket_domain_name}"
}
output "s3_bucket_regional_domain_name" {
  value = "${aws_s3_bucket.s3_bucket.bucket_regional_domain_name}"
}
output "s3_bucket_hosted_zone_id" {
  value = "${aws_s3_bucket.s3_bucket.hosted_zone_id}"
}
output "s3_bucket_region" {
  value = "${aws_s3_bucket.s3_bucket.region}"
}
output "s3_bucket_website_endpoint" {
  value = "${aws_s3_bucket.s3_bucket.website_endpoint}"
}
output "s3_bucket_website_domain" {
  value = "${aws_s3_bucket.s3_bucket.website_domain}"
}
