resource "aws_s3_bucket_inventory" "s3_bucket_inventory_configuration" {
  bucket = "${var.source_bucket_id}"
  "destination" {
    "bucket" {
      bucket_arn = "${var.destination_bucket_arn}"
      format = "${var.inventory_results_output_format}"
      account_id = "${var.destination_bucket_account_id}"
      prefix = "${var.prefix_prepended_to_all_inventory_results}"
      encryption {
        sse_kms {
          key_id = "${var.kms_cmk_arn}"
        }
        sse_s3 = ["${var.sse_s3}"]
      }
    }
  }
  included_object_versions = "${var.included_object_versions_all_or_current}"
  name = "${var.s3_bucket_inventory_configuration_unique_id_name}"
  "schedule" {
    frequency = "${var.schedule_frequency_weekly_daily}"
  }
  filter {
    prefix = "${var.object_prefix_for_filtering}"
  }
  optional_fields = ["${var.optional_fields}"]
}