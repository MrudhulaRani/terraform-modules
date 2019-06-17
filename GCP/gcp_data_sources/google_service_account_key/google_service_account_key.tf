resource "google_service_account_key" "google_service_account_key" {
  service_account_id = "${var.service_account_id}"
  name = "${var.google_service_account_key_name}"
  public_key_type = "${var.public_key_type}"
}