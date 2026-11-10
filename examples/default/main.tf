data "azuread_client_config" "current" {}

module "groups" {
  source  = "cloudnationhq/groups/azuread"
  version = "~> 1.0"

  groups = {
    group1 = {
      display_name = "Group 1"
      members      = ["12345678-abcd-0987-1234-123456789012"]
    }
    group2 = {
      display_name = "Group 2"
      owners       = ["12345678-abcd-0987-1234-123456789012"]
    }
    group3 = {
      display_name   = "Group 3"
      ignore_members = true
      owners         = [data.azuread_client_config.current.object_id]
    }
  }
}
