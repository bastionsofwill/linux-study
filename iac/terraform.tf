terraform {
  cloud {
    organization = "linux-study"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      name = "iac"
    }
  }
}
