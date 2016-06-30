- view: spm_yellow_range
  sql_table_name: spm.spm_yellow_range
  fields:

  - dimension: yellow_range_criteria_greater_than_or_equal_to
    type: number
    sql: ${TABLE}.Yellow_Range_Criteria_Greater_Than_or_Equal_To

  - dimension: yellow_range_criteria_less_than
    type: number
    sql: ${TABLE}.Yellow_Range_Criteria_Less_Than

  - dimension: yellow_range_field_name
    type: string
    sql: ${TABLE}.Yellow_Range_Field_Name

  - dimension: yellow_range_limit_above_target
    type: number
    sql: ${TABLE}.Yellow_Range_Limit_Above_Target

  - dimension: yellow_range_limit_below_target
    type: number
    sql: ${TABLE}.Yellow_Range_Limit_Below_Target

  - dimension: yellow_range_out_of_range_color
    type: string
    sql: ${TABLE}.Yellow_Range_Out_of_Range_Color

  - dimension: yellow_range_sort_order
    type: number
    sql: ${TABLE}.Yellow_Range_Sort_Order

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: [yellow_range_field_name]

