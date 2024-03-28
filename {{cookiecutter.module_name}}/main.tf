locals {
  groups_config = [
    {
      group_subject     = "{{cookiecutter.group_subject}}"
      group_description = "{{cookiecutter.group_description}}"
      owners            = ["{{cookiecutter.owners}}"]
      {% for member in cookiecutter.members %}
      members           = ["{{member}}"]
      {% endfor %}
    }
  ]
}
