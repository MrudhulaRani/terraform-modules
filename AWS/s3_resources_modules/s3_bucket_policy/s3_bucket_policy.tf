resource "aws_s3_bucket_policy" "s3_bucket_policy" {
  bucket = "${var.s3_bucket_id}"
  policy = "${var.policy_text}"
  #  policy = <<POLICY
  #{
  #  "Version": "2012-10-17",
  #  "Id": "MYBUCKETPOLICY",
  #  "Statement": [
  #    {
  #      "Sid": "IPAllow",
  #      "Effect": "Deny",
  #      "Principal": "*",
  #      "Action": "s3:*",
  #      "Resource": "arn:aws:s3:::my_tf_test_bucket/*",
  #      "Condition": {
  #         "IpAddress": {"aws:SourceIp": "8.8.8.8/32"}
  #      }
  #    }
  #  ]
  #}
  #POLICY
}