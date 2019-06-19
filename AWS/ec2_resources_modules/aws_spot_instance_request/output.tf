output "aws_spot_instance_request_id" {
  value = "${aws_spot_instance_request.aws_spot_instance_request.id}"
}
output "aws_spot_instance_request_spot_bid_status" {
  value = "${aws_spot_instance_request.aws_spot_instance_request.spot_bid_status}"
}
output "aws_spot_instance_request_spot_request_state" {
  value = "${aws_spot_instance_request.aws_spot_instance_request.spot_request_state}"
}
output "aws_spot_instance_request_spot_instance_id" {
  value = "${aws_spot_instance_request.aws_spot_instance_request.spot_instance_id}"
}
output "aws_spot_instance_request_public_ip" {
  value = "${aws_spot_instance_request.aws_spot_instance_request.public_ip}"
}
output "aws_spot_instance_request_public_dns" {
  value = "${aws_spot_instance_request.aws_spot_instance_request.public_dns}"
}
output "aws_spot_instance_request_private_ip" {
  value = "${aws_spot_instance_request.aws_spot_instance_request.private_ip}"
}
output "aws_spot_instance_request_private_private_dns" {
  value = "${aws_spot_instance_request.aws_spot_instance_request.private_dns}"
}