resource "google_service_account" "gke_sa" {
  account_id   = "${local.name}-gke-sa"
  display_name = "${local.name} GKE Service Account"
}

# 2. Grant the required role to the service account
resource "google_project_iam_member" "gke_node_sa_role" {
  for_each = toset(local.common_tags.gke_node_roles)
  project = var.gcp_project # Replace with your project ID or var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.gke_sa.email}"
}