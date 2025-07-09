terraform {
  #Manually create this bucket  
  backend "gcs" {
    bucket = "tf-state-devops-concepts"
    prefix = "terraform/state/dev"
  }
}