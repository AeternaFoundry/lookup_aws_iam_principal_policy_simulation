data "aws_iam_principal_policy_simulation" "iam_principal_policy_simulation_lookup" {
  for_each = var.iam_principal_policy_simulation_lookup

  action_names                       = each.value.action_names
  policy_source_arn                  = each.value.policy_source_arn
  additional_policies_json           = each.value.additional_policies_json
  caller_arn                         = each.value.caller_arn
  permissions_boundary_policies_json = each.value.permissions_boundary_policies_json
  resource_arns                      = each.value.resource_arns
  resource_handling_option           = each.value.resource_handling_option
  resource_owner_account_id          = each.value.resource_owner_account_id
  resource_policy_json               = each.value.resource_policy_json

  dynamic "context" {
    for_each = each.value.context != null ? each.value.context : []
    content {
      key    = context.value.key
      type   = context.value.type
      values = context.value.values
    }
  }
}

