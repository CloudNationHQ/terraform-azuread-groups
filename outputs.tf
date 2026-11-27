output "groups" {
  description = "contains all Entra ID groups"
  value       = merge(azuread_group.main, azuread_group_without_members.manual)
}

output "group_members" {
  description = "contains all non-authoritative group memberships"
  value       = azuread_group_member.members
}
