resource "google_storage_bucket" "default" {
    name = "devops-concepts-01"
    location = "us-central1"
}

resource "google_storage_bucket" "default-01" {
    name = "devops-concepts-02"
    location = "us-central1"
}