# Deploy II end-to-end test: a plan with no cloud provider, so the pipeline needs no cloud credentials.
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "terraform_data" "marker" {
  input = "sg-tirith-pipeline-test"
}

resource "local_file" "note" {
  filename = "${path.module}/note.txt"
  content  = "Planned by the Deploy II test pipeline."
}
