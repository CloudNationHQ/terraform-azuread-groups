variable "groups" {
  description = "describes group configuration"
  type = map(object({
    administrative_unit_ids    = optional(list(string))
    assignable_to_role         = optional(bool)
    auto_subscribe_new_members = optional(bool)
    behaviors                  = optional(list(string))
    description                = optional(string)
    display_name               = optional(string) # if not set, the key will be used as display_name
    external_senders_allowed   = optional(bool)
    hide_from_address_lists    = optional(bool)
    hide_from_outlook_clients  = optional(bool)
    mail_enabled               = optional(bool)
    mail_nickname              = optional(string)
    members                    = optional(list(string))
    onpremises_group_type      = optional(string)
    owners                     = optional(list(string), [])
    prevent_duplicate_names    = optional(bool)
    provisioning_options       = optional(list(string)) # only value "Team" is supported
    security_enabled           = optional(bool, true)
    theme                      = optional(string)
    types                      = optional(list(string)) # only value "Unified" or "DynamicMembership" are supported
    visibility                 = optional(string)       # only value "Private", "Public" or "Hiddenmembership" are supported
    writeback_enabled          = optional(bool)
    dynamic_membership = optional(object({
      enabled = optional(bool, true)
      rule    = string
    }))
  }))
}
