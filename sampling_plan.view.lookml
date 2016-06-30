- view: sampling_plan
  sql_table_name: spm.sampling_plan
  fields:

  - dimension: battlefield
    type: string
    sql: ${TABLE}.Battlefield

  - dimension: brand_code
    type: number
    sql: ${TABLE}.Brand_Code

  - dimension: country
    type: string
    sql: ${TABLE}.Country

  - dimension: cpt_vs_other_brand
    type: string
    sql: ${TABLE}.CPT_vs_Other_Brand

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

