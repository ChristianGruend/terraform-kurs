terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "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"
}

# Create a new repository
resource "github_repository" "example" {
  name        = "ChristianGruender"
  description = "blabliblablub"
}
