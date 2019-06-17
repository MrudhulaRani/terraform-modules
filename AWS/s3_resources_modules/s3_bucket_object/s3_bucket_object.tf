resource "aws_s3_bucket_object" "s3_bucket_object" {
  bucket = "${var.s3_bucket_name}"
  key = "${var.object_name}"
  source = "${var.path_to_file}"
  acl = "${var.object_canned_acl_private}"
  #etag = "${var.etag}"
  #(Optional) Used to trigger updates. The only meaningful value is ${filemd5("path/to/file")}
  #(Terraform 0.11.12 or later) or ${md5(file("path/to/file"))}(Terraform 0.11.11 or earlier).
  #This attribute is not compatible with KMS encryption, kms_key_id or server_side_encryption = "aws:kms".
  kms_key_id = "${var.kms_key_id_arn}"
  server_side_encryption = "${var.object_server_side_encryption}"
  website_redirect = "${var.target_url_website_redirect}"
  storage_class = "${var.object_storage_class}"
  tags {
    Name = "${var.object_tag_name}"
    Value = "${var.object_tag_value}"
  }
  cache_control = "${var.cache_control}"
  content_disposition = "${var.content_disposition}"
  content_encoding = "${var.content_encoding}"
  content_language = "${var.content_language}"
  content_type = "${var.content_type}"
}