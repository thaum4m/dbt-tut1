# Define dbt adapters to install.
FROM ghcr.io/dbt-labs/dbt-core:latest
ARG dbt_adapters
# Install deps and required adapters.
RUN apt-get update \
  && apt-get install libffi-dev \
  # Remove double quotes which may be injected via .env on Windoze.
  && pip install $(echo "$dbt_adapters" | sed "s/\"//g")
