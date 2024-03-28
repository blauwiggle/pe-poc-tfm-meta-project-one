locals {
  groups_config = [
    {% for extension, details in cookiecutter.groups.items() %}
    {
      group_subject     = "{{ details.group_subject }}"
      group_description = "{{ details.group_description }}"
      owners            = [{% for owner in details.owners %}"{{ owner }}"{% if not loop.last %}, {% endif %}{% endfor %}]
      members           = [{% for member in details.members %}"{{ member }}"{% if not loop.last %}, {% endif %}{% endfor %}]
    },{% if not loop.last %},{% endif %}
    {% endfor %}
  ]
}