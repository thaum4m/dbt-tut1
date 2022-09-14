# dbt_tut1
Demonstrates basic functionality of dbt with Postgres.

## Prerequisites
Docker is required for launching Postgres and running dbt.  With some effort, the setup can be replicated locally without Docker.

## Usage
1. Launch Postgres:
```bash
cd docker
docker-compose up postgres -d
```
2. Prepare source data (remove "set " if using Linux):
```bash
set CMD=seed && docker-compose up dbt_tut1
```
3. Transform source data:
```bash
set CMD=run && docker-compose up dbt_tut1
```

## Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
