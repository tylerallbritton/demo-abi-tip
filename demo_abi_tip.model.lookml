- connection: demo-abi-tip

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# NOTE: please see https://www.looker.com/docs/r/dialects/bigquery
# NOTE: for BigQuery specific considerations

- explore: sampling_plan

- explore: spm_fact

- explore: spm_fact_backup

- explore: spm_yellow_range

- explore: trend_analysis

