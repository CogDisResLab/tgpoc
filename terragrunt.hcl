generate "workspace" {
    path = "workspace.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
terraform {
    cloud {
        organization = "CogDisResLab"
        workspaces {
            name = "${path_relative_to_include()}"
        }
    }
}
    EOF
}

generate "providers" {
    path = "providers.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
terraform {
    required_providers {
        random = {
            source = "hashicorp/random"
            version = "3.4.3"
        }
        tfe = {
      source = "hashicorp/tfe"
      version = "0.41.0"
    }
    }
}
    EOF
}