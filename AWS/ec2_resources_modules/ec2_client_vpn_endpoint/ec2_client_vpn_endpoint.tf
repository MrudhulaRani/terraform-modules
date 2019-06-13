resource "aws_ec2_client_vpn_endpoint" "ec2_client_vpn_endpoint" {
  description = "${var.ec2_client_vpn_endpoint_description}"
  server_certificate_arn = "${var.ACM_server_certificate_arn}"
  client_cidr_block = "${var.client_cidr_block}"
  # (Required) The IPv4 address range, in CIDR notation, from which to assign client IP addresses.
  #The address range cannot overlap with the local CIDR of the VPC in which the associated subnet is located, or the routes that you add manually.
  #The address range cannot be changed after the Client VPN endpoint has been created. The CIDR block should be /22 or greater.
  authentication_options {
    type = "${var.client_authentication_type}"
    #(Required) The type of client authentication to be used.
    #Specify certificate-authentication to use certificate-based authentication,
    #or directory-service-authentication to use Active Directory authentication.
    root_certificate_chain_arn = "${var.acm_client_certificate_arn}"
    active_directory_id = "${var.active_directory_id}"
  }
  connection_log_options {
    enabled               = "${var.connection_logging_enable}"
    cloudwatch_log_group  = "${var.cloudwatch_log_group_name}"
    cloudwatch_log_stream = "${var.cloudwatch_log_stream_name}"
  }
}