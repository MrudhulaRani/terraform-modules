resource "aws_iam_openid_connect_provider" "iam_openid_connect_provider" {
  client_id_list = ["${var.client_id_list}"]
  #(Required) A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the client_id parameter on OAuth requests.)
  thumbprint_list = ["${var.thumbprint_list}"]
  # (Required) A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s).
  url = "${var.identity_provider_url}"
  #(Required) The URL of the identity provider. Corresponds to the iss claim.
}