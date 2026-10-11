variable "iam_principal_policy_simulation_lookup" {
  description = <<EOT
Map of iam_principal_policy_simulation_lookup, attributes below
Required:
    - action_names
    - policy_source_arn
Optional:
    - additional_policies_json
    - caller_arn
    - permissions_boundary_policies_json
    - resource_arns
    - resource_handling_option
    - resource_owner_account_id
    - resource_policy_json
    - context (block):
        - key (required)
        - type (required)
        - values (required)
EOT

  type = map(object({
    action_names                       = set(string)
    policy_source_arn                  = string
    additional_policies_json           = optional(set(string))
    caller_arn                         = optional(string)
    permissions_boundary_policies_json = optional(set(string))
    resource_arns                      = optional(set(string))
    resource_handling_option           = optional(string)
    resource_owner_account_id          = optional(string)
    resource_policy_json               = optional(string)
    context = optional(list(object({
      key    = string
      type   = string
      values = set(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_principal_policy_simulation_lookup : (
        v.permissions_boundary_policies_json == null || (alltrue([for x in v.permissions_boundary_policies_json : can(jsondecode(x))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.iam_principal_policy_simulation_lookup : (
        v.additional_policies_json == null || (alltrue([for x in v.additional_policies_json : can(jsondecode(x))]))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.iam_principal_policy_simulation_lookup : (
        v.resource_policy_json == null || (can(jsondecode(v.resource_policy_json)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

