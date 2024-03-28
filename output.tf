output "groups" {
  value = { for g in local.groups_config : g.group_subject => g }
}
