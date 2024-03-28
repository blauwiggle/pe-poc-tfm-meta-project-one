locals {
  groups_config = [
    {
      group_subject     = "{{ cookiecutter.group_subject }}"
      group_description = "{{ cookiecutter.group_description }}"
      owners            = [{{ cookiecutter.owners | map(attribute='id') | join(', ') }}]
      members           = [{{ cookiecutter.members | map(attribute='id') | join(', ') }}]
    }
  ]
}
