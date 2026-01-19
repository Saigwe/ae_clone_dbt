{% macro assert_not_prod() %}
  {% if target.name == 'prod'
        and env_var('DBT_ALLOW_PROD', 'false') != 'true' %}
    {{ exceptions.raise_compiler_error(
        "Direct prod runs are blocked. Set DBT_ALLOW_PROD=true to proceed."
    ) }}
  {% endif %}
{% endmacro %}
