{% for extension, details in cookiecutter.groups.items() %}

locals {
  groups_config = [
    {
      group_subject     = "{{ details.group_subject }}"
      group_description = "{{ details.group_description }}"

      {% for owner in details.owners -%}
      owners            = [{{ owner }}]
      {% endfor -%}

      {% for member in details.members -%}
      members           = [{{ member }}]
      {% endfor -%}
    }
  ]

{% endfor %}
