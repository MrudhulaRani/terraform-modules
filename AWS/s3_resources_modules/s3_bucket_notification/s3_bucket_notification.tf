resource "aws_s3_bucket_notification" "s3_bucket_notification" {
  bucket = "${var.s3_bucket_id}"
  topic {
    events = ["${var.topic_events}"]
    topic_arn = "${var.sns_topic_arn}"
    id = "${var.topic_unique_id_name}"
    filter_prefix = "${var.topic_object_key_name_prefix}"
    filter_suffix = "${var.topic_object_key_name_suffix}"
  }
  queue {
    events = ["${var.queue_events}"]
    queue_arn = "${var.sqs_topic_arn}"
    id = "${var.queue_id}"
    filter_prefix = "${var.queue_object_key_name_prefix}"
    filter_suffix = "${var.queue_object_key_name_suffix}"
  }
  lambda_function {
    events = ["${var.lambda_function_events}"]
    lambda_function_arn = "${var.lambda_function_arn}"
    id = "${var.lambda_function_id}"
    filter_prefix = "${var.lambda_function_object_key_name_prefix}"
    filter_suffix = "${var.lambda_function_object_key_name_suffix}"
  }
}