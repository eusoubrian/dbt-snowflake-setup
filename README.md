❄️ dbt + Snowflake Starter Project

Welcome to this DBT + Snowflake Starter Template, designed to help you quickly bootstrap a Snowflake-native data stack using dbt. This project includes useful macros and models to streamline your development workflow and implement best practices from day one.
🚀 What's Included

This repository provides:

    ✅ Macros for:

        Creating Stages

        Creating Pipes

        Creating Tables (RAW zone)

        Creating Procedures

    ✅ A sample transform model in the models/transform/ directory

It aims to reduce boilerplate when setting up Snowflake resources and help you move faster with dbt automation and modular development.
🗂 Project Structure

├── macros/
│   ├── stage.sql
│   ├── pipe.sql
│   ├── proc.sql
│   └── stg_table.sql
├── models/
│   └── transform/
│       └── trf_table.sql
├── dbt_project.yml
└── README.md

🛠 Requirements

Before running the project, ensure you have:

    dbt-core installed (pip install dbt-snowflake)

    A valid profiles.yml configured for your Snowflake account

    Required Snowflake privileges to create stages, pipes, etc.

📦 How to Use
1. Running a macro

Use dbt run-operation to execute a macro. For example, to run a macro called create_stage:

dbt run-operation stage

You can pass arguments as needed:

dbt run-operation stage --args '{"stage_name": "my_stage", "url": "s3://my-bucket/"}'

2. Running a model

To run a transformation model (e.g., trf_table):

dbt run --select trf_table

Or run all models:

dbt run

3. Testing models (if you add tests)

dbt test

🧠 Why This Matters

This starter kit helps teams working with Snowflake and dbt:

    Establish a strong foundation for modular development

    Automate the creation of Snowflake objects

    Separate RAW ingestion and TRANSFORM layers clearly

    Speed up onboarding and productivity

