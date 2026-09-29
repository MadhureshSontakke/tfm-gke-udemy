resource "google_service_account" "gke_sa" {
  account_id   = "${local.name}-gke-sa"
  display_name = "${local.name} GKE Service Account"
}

# 2. Grant the required role to the service account
resource "google_project_iam_member" "gke_node_sa_role" {
  project = var.gcp_project # Replace with your project ID or var.project_id
  role    = "roles/container.defaultNodeServiceAccount"
  member  = "serviceAccount:${google_service_account.gke_sa.email}"
}