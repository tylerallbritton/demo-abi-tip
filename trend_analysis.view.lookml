- view: trend_analysis
  sql_table_name: spm.trend_analysis
  fields:

  - dimension: brand_code
    type: number
    sql: ${TABLE}.brand_code

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension: long_term_average_most_current
    type: number
    sql: ${TABLE}.Long_Term_Average_Most_Current

  - dimension: long_term_average_oldest
    type: number
    sql: ${TABLE}.Long_Term_Average_Oldest

  - dimension: long_term_change_category
    type: string
    sql: ${TABLE}.Long_Term_Change_Category

  - dimension: long_term_semester_most_current
    type: number
    sql: ${TABLE}.Long_Term_Semester_Most_Current

  - dimension: long_term_semester_oldest
    type: number
    sql: ${TABLE}.Long_Term_Semester_Oldest

  - dimension: long_term_year_most_current
    type: number
    sql: ${TABLE}.Long_Term_Year_Most_Current

  - dimension: long_term_year_oldest
    type: number
    sql: ${TABLE}.Long_Term_Year_Oldest

  - dimension: most_current_semester
    type: number
    sql: ${TABLE}.most_current_semester

  - dimension: most_current_value
    type: number
    sql: ${TABLE}.Most_Current_Value

  - dimension: most_current_year
    type: number
    sql: ${TABLE}.most_current_year

  - dimension: recent_change_average
    type: number
    sql: ${TABLE}.Recent_Change_Average

  - dimension: recent_change_category
    type: string
    sql: ${TABLE}.Recent_Change_Category

  - dimension: recent_change_max_value
    type: number
    sql: ${TABLE}.Recent_Change_Max_Value

  - dimension: recent_change_min_value
    type: number
    sql: ${TABLE}.Recent_Change_Min_Value

  - dimension: recent_change_most_current_semester
    type: number
    sql: ${TABLE}.Recent_Change_Most_Current_Semester

  - dimension: recent_change_most_current_value
    type: number
    sql: ${TABLE}.Recent_Change_Most_Current_Value

  - dimension: recent_change_most_current_year
    type: number
    sql: ${TABLE}.Recent_Change_Most_Current_Year

  - dimension: recent_change_oldest_semester
    type: number
    sql: ${TABLE}.Recent_Change_Oldest_Semester

  - dimension: recent_change_oldest_value
    type: number
    sql: ${TABLE}.Recent_Change_Oldest_Value

  - dimension: recent_change_oldest_year
    type: number
    sql: ${TABLE}.Recent_Change_Oldest_Year

  - dimension: specifications_or_analysis
    type: string
    sql: ${TABLE}.specifications_or_analysis

  - dimension: trend_measure
    type: string
    sql: ${TABLE}.Trend_Measure

  - dimension: type_of_pack
    type: string
    sql: ${TABLE}.type_of_pack

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: []

