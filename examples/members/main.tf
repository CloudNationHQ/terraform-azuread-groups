data "azuread_client_config" "current" {}

# stands in for shared groups that are owned elsewhere
module "shared_groups" {
  source  = "cloudnationhq/groups/azuread"
  version = "~> 1.0"

  groups = {
    shared1 = {
      display_name   = "Shared Group 1"
      ignore_members = true
      owners         = [data.azuread_client_config.current.object_id]
    }
    shared2 = {
      display_name   = "Shared Group 2"
      ignore_members = true
      owners         = [data.azuread_client_config.current.object_id]
    }
  }
}

# existing groups are referenced by object id, for example through data "azuread_group"
module "memberships" {
  source  = "cloudnationhq/groups/azuread"
  version = "~> 1.0"

  group_members = {
    current-shared1 = {
      group_object_id  = module.shared_groups.groups["shared1"].object_id
      member_object_id = data.azuread_client_config.current.object_id
    }
    current-shared2 = {
      group_object_id  = module.shared_groups.groups["shared2"].object_id
      member_object_id = data.azuread_client_config.current.object_id
    }
  }
}
