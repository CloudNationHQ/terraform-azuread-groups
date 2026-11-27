data "azuread_client_config" "current" {}

# stands in for shared groups that are owned elsewhere
module "shared_groups" {
  source  = "cloudnationhq/groups/azuread"
  version = "~> 1.0"

  groups = {
    acr-push = {
      display_name   = "ACR Push"
      ignore_members = true
      owners         = [data.azuread_client_config.current.object_id]
    }
    acr-pull = {
      display_name   = "ACR Pull"
      ignore_members = true
      owners         = [data.azuread_client_config.current.object_id]
    }
  }

  # members of groups created in the same call are referenced by key
  group_members = {
    current-acr-pull = {
      group_key        = "acr-pull"
      member_object_id = data.azuread_client_config.current.object_id
    }
  }
}

# existing groups are referenced by object id, for example through data "azuread_group"
module "memberships" {
  source  = "cloudnationhq/groups/azuread"
  version = "~> 1.0"

  group_members = {
    current-acr-push = {
      group_object_id  = module.shared_groups.groups["acr-push"].object_id
      member_object_id = data.azuread_client_config.current.object_id
    }
  }
}
