resource "google_storage_bucket" "default" {
    name = "devops-concepts-01"
    location = "us-central1"
}

resource "google_storage_bucket" "default-01" {
    name = "devops-concepts-02"
    location = "us-central1"
}

resource "google_storage_bucket" "tf-state" {
    default_event_based_hold    = false
    #effective_labels            = {}
    enable_object_retention     = false
    force_destroy               = false
    #id                          = "tf-state-devops-concepts"
    labels                      = {}
    location                    = "US"
    name                        = "tf-state-devops-concepts"
    project                     = "cloud-custom-demos"
    #project_number              = 135489631254
    public_access_prevention    = "enforced"
    requester_pays              = false
    rpo                         = "DEFAULT"
    #self_link                   = "https://www.googleapis.com/storage/v1/b/tf-state-devops-concepts"
    storage_class               = "STANDARD"
    #terraform_labels            = {}
    #time_created                = "2025-07-09T10:26:20.993Z"
    uniform_bucket_level_access = true
    #updated                     = "2025-07-09T10:26:20.993Z"
    #url                         = "gs://tf-state-devops-concepts"

    hierarchical_namespace {
        enabled = false
    }

    lifecycle_rule {
        action {
            type = "Delete"
        }
        condition {
            age                                     = 0
            days_since_custom_time                  = 0
            days_since_noncurrent_time              = 0
            matches_prefix                          = []
            matches_storage_class                   = []
            matches_suffix                          = []
            num_newer_versions                      = 1
            send_age_if_zero                        = false
            send_days_since_custom_time_if_zero     = false
            send_days_since_noncurrent_time_if_zero = false
            send_num_newer_versions_if_zero         = false
            with_state                              = "ARCHIVED"
        }
    }
    lifecycle_rule {
        action {
            type = "Delete"
        }
        condition {
            age                                     = 0
            days_since_custom_time                  = 0
            days_since_noncurrent_time              = 14
            matches_prefix                          = []
            matches_storage_class                   = []
            matches_suffix                          = []
            num_newer_versions                      = 0
            send_age_if_zero                        = false
            send_days_since_custom_time_if_zero     = false
            send_days_since_noncurrent_time_if_zero = false
            send_num_newer_versions_if_zero         = false
            with_state                              = "ANY"
        }
    }

    soft_delete_policy {
        retention_duration_seconds = 0
    }

    versioning {
        enabled = true
    }
}