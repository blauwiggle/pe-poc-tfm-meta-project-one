locals {
  groups_config = [
    {% for k, v in cookiecutter.groups.items() %}
    {
      group_subject     = "{{ v.group_subject }}"
      group_description = "{{ v.group_description }}"
      owners            = [{% for owner in v.owners %}"{{ owner }}"{% if not loop.last %}, {% endif %}{% endfor %}]
      members           = [{% for member in v.members %}"{{ member }}"{% if not loop.last %}, {% endif %}{% endfor %}]
    },{% if not loop.last %}{% endif %}
    {% endfor %}
  ]
} // {{cookiecutter.project_author}}