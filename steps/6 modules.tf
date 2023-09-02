module "env_vars" {
  source = "../modules/env"
}

module "ship" {
  source = "git::https://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@github.com/chrome99/Terraform.git"
}
