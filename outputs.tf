output "iam_principal_policy_simulation_lookup_id" {
  description = "Map of id values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_principal_policy_simulation_lookup_action_names" {
  description = "Map of action_names values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.action_names if v.action_names != null && length(v.action_names) > 0 }
}
output "iam_principal_policy_simulation_lookup_additional_policies_json" {
  description = "Map of additional_policies_json values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.additional_policies_json if v.additional_policies_json != null && length(v.additional_policies_json) > 0 }
}
output "iam_principal_policy_simulation_lookup_all_allowed" {
  description = "Map of all_allowed values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.all_allowed if v.all_allowed != null }
}
output "iam_principal_policy_simulation_lookup_caller_arn" {
  description = "Map of caller_arn values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.caller_arn if v.caller_arn != null && length(v.caller_arn) > 0 }
}
output "iam_principal_policy_simulation_lookup_context" {
  description = "Map of context values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.context if v.context != null && length(v.context) > 0 }
}
output "iam_principal_policy_simulation_lookup_permissions_boundary_policies_json" {
  description = "Map of permissions_boundary_policies_json values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.permissions_boundary_policies_json if v.permissions_boundary_policies_json != null && length(v.permissions_boundary_policies_json) > 0 }
}
output "iam_principal_policy_simulation_lookup_policy_source_arn" {
  description = "Map of policy_source_arn values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.policy_source_arn if v.policy_source_arn != null && length(v.policy_source_arn) > 0 }
}
output "iam_principal_policy_simulation_lookup_resource_arns" {
  description = "Map of resource_arns values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.resource_arns if v.resource_arns != null && length(v.resource_arns) > 0 }
}
output "iam_principal_policy_simulation_lookup_resource_handling_option" {
  description = "Map of resource_handling_option values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.resource_handling_option if v.resource_handling_option != null && length(v.resource_handling_option) > 0 }
}
output "iam_principal_policy_simulation_lookup_resource_owner_account_id" {
  description = "Map of resource_owner_account_id values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.resource_owner_account_id if v.resource_owner_account_id != null && length(v.resource_owner_account_id) > 0 }
}
output "iam_principal_policy_simulation_lookup_resource_policy_json" {
  description = "Map of resource_policy_json values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.resource_policy_json if v.resource_policy_json != null && length(v.resource_policy_json) > 0 }
}
output "iam_principal_policy_simulation_lookup_results" {
  description = "Map of results values across all iam_principal_policy_simulation_lookup, keyed the same as var.iam_principal_policy_simulation_lookup"
  value       = { for k, v in data.aws_iam_principal_policy_simulation.iam_principal_policy_simulation_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

