resource "google_project_service" "aiplatform" {
  service = "aiplatform.googleapis.com"
  disable_dependent_services = false
  disable_on_destroy = true
}
