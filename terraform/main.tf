module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jiugongtaiji+sandbox4@gmail.com"
    AccountName               = "sandbox-aft4"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jiugongtaiji+sandbox4@gmail.com"
    SSOUserFirstName          = "Sandbox4"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
