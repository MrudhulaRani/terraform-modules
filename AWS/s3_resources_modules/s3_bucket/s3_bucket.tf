resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.s3_bucket_name}"
  acl = "private"
  tags {
    Name = "${var.s3_bucket_name}"
    Environment = "${var.s3_bucket_Environment}"
  }
  policy = "${var.bucket_iam_policy}"
  #policy = "${file("policy.json")}"
  website {
    index_document = "${var.index_document_html_file_path}"
    error_document = "${var.error_document_html_file_path}"
    routing_rules = "${var.routing_rules_json_array}"
  }
  cors_rule {
    allowed_methods = ["${var.allowed_methods}"]
    allowed_origins = ["${var.allowed_origins}"]
    allowed_headers = ["${var.allowed_headers}"]
    expose_headers = ["${var.expose_headers}"]
    max_age_seconds = '${var.max_age_seconds}'
  }
  versioning {
    enabled = "${var.versioning_enabled}"
    mfa_delete = "${var.mfa_delete}"
  }
  logging {
    target_bucket = "${var.s3_bucket_id}"
    target_prefix = "${var.a_key_prefix_for_log_objects}"
  }
  lifecycle_rule {
    enabled = "${var.lifecycle_rule_enabled}"
    id = "${var.lifecycle_rule_unique_id}"
    tags {
      Name = "${var.lifecycle_rule_name}"
      Value = "${var.lifecycle_rule_value}"
    }
    transition {
      storage_class = "${var.transition_1_storage_class}"
      date = "${var.transition_1_date}"
      days = "${var.transition_1_days}"
    }
    transition {
      storage_class = "${var.transition_2_storage_class}"
      date = "${var.transition_2_date}"
      days = "${var.transition_2_days}"
    }
    expiration {
      date = "${var.expiration_date}"
      days = "${var.expiration_days}"
      expired_object_delete_marker = "${var.expired_object_delete_marker}"
    }
    noncurrent_version_transition {
      storage_class = "${var.noncurrent_version_transition_1_storage_class}"
      days = "${var.noncurrent_version_transition_1_days}"
    }
    noncurrent_version_transition {
      storage_class = "${var.noncurrent_version_transition_2_storage_class}"
      days = "${var.noncurrent_version_transition_2_days}"
    }
    noncurrent_version_expiration {
      days = "${var.noncurrent_version_expiration_days}"
    }
  }
  replication_configuration {
    role = "${var.role_arn}"
    # ARN of the IAM role for Amazon S3 to assume when replicating the objects
    "rules" {
      status = "${var.rule_satus_enabled}"
      id = "${var.rule_unique_id}"
      priority = "${var.rule_priority}"
      "destination" {
        bucket = "${var.s3_bucket_arn}"
        storage_class = "${var.destination_storage_class}"
        replica_kms_key_id = "${var.replica_kms_key_arn}"
        #(Optional) Destination KMS encryption key ARN for SSE-KMS replication.
        #Must be used in conjunction with sse_kms_encrypted_objects source selection criteria.
        access_control_translation {
          owner = "${var.access_control_translation_owner}"
        }
        account_id = "${var.account_id}"
      }
      source_selection_criteria {
        sse_kms_encrypted_objects {
          enabled = "${var.sse_kms_encrypted_objects_enabled}"
        }
      }
      filter {
        prefix = "${var.rule_object_keyname_prefix}"
        tags {
          Name = "${var.rule_tag_name}"
          Value = "${var.rule_tag_value}"
        }
      }
    }
  }
  server_side_encryption_configuration {
    "rule" {
      "apply_server_side_encryption_by_default" {
        sse_algorithm = "${var.sse_algorithm}"
        #(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms
        kms_master_key_id = "${var.kms_master_key_id_arn}"
        #(optional) The AWS KMS master key ID used for the SSE-KMS encryption.
        #This can only be used when you set the value of sse_algorithm as aws:kms.
        #the default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms.
      }
    }
  }
  }
