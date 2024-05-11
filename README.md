# honeydew-dbt

Honeydew dbt package, used to call into Honeydew using the Snowflake native application.

## Installation

Add to the `packages.yml` of your dbt project:

```yml
packages:
  - git: "https://github.com/honeydew-ai/honeydew-dbt.git"
    revision: "latest"
```

## Configuration

The [variables](https://docs.getdbt.com/docs/using-variables) needed to configure this package are as follows:

| variable                           | information                                                                    | required |
| ---------------------------------- | ------------------------------------------------------------------------------ | :------: |
| honeydew:workspace                 | Workspace in which to operate.                                                 |   Yes    |
| honeydew:branch                    | Branch in which to operate. Default=prod                                       |    No    |
| honeydew:snowflake_native_app_name | Snowflake native app installed name. Default=SEMANTIC_LAYER_ENTERPRISE_EDITION |    No    |

An example `dbt_project.yml` configuration:

```yml
# dbt_project.yml
---
vars:
  "honeydew:workspace": "tpch_demo"
  "honeydew:branch": "prod"
  "honeydew:snowflake_native_app_name": "SEMANTIC_LAYER_ENTERPRISE_EDITION"
```
