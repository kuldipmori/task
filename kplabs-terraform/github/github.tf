terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.39.0"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "test-terraform-1" {
  name        = "test-terraform"
  description = "My awesome codebase"

  visibility = "public"

}