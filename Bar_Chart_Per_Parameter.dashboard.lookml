- dashboard: bar_chart_per_parameter
  layout: grid
  rows:
    - elements: [Mainbarchart]
      height: 540

  filters:
  - name: country
    title: 'Country'
    type: field_filter
    explore: spm_fact_rev2
    field: spm_fact_rev2.Country
    default_value: "Belgium"

  - name: year
    title: 'Year'
    type: field_filter
    explore: spm_fact_rev2
    field: spm_fact_rev2.Year

  - name: semester
    title: 'Semester'
    type: field_filter
    explore: spm_fact_rev2
    field: spm_fact_rev2.Semester

  - name: Mainmeasure
    title: 'Select a Main Measure'
    type: field_filter
    explore: spm_fact_rev2
    field: spm_fact_rev2.select_a_MAIN_measure

  elements:
  - name: Mainbarchart
    title: Bar Charts Per Parameter
    type: looker_bar
    model: spm
    explore: spm_fact_rev2
    dimensions: [spm_fact_rev2.Brand_codes, spm_fact_rev2.AB_Inbev_Competitors]
    pivots: [spm_fact_rev2.AB_Inbev_Competitors]
    measures: [spm_fact_rev2.MAIN]
    dynamic_fields:
    - table_calculation: sort_pivot1
      label: Sort_pivot1
      expression: if(coalesce(pivot_index(${spm_fact_rev2.MAIN},2),0)>coalesce(pivot_index(${spm_fact_rev2.MAIN},3),0),pivot_index(${spm_fact_rev2.MAIN},2),pivot_index(${spm_fact_rev2.MAIN},3))
    - table_calculation: sort_pivot2
      label: sort_pivot2
      expression: if(coalesce(pivot_index(${spm_fact_rev2.MAIN},1),0)>coalesce(pivot_index(${spm_fact_rev2.MAIN},2),0),pivot_index(${spm_fact_rev2.MAIN},1),pivot_index(${spm_fact_rev2.MAIN},2))
    - table_calculation: sort_pivot
      label: sort_pivot
      expression: if(coalesce(${sort_pivot1},0)>coalesce(${sort_pivot2},0),${sort_pivot1},${sort_pivot2})
    - table_calculation: nullvals
      label: nullvals
      expression: ${sort_pivot}>0
    hidden_fields: [sort_pivot, sort_pivot2, sort_pivot1, nullvals]
    filters:
      #spm_fact_rev2.country: ''
      #spm_fact_rev2.semester: ''
      #spm_fact_rev2.year: ''
      #spm_fact_rev2.select_a_measure: Iso-Alpha-Acids (ppm)
    listen:
      country: spm_fact_rev2.Country
      semester: spm_fact_rev2.Semester
      year: spm_fact_rev2.Year
      Mainmeasure: spm_fact_rev2.select_a_MAIN_measure
    sorts: [spm_fact_rev2.AB_Inbev_Competitors, sort_pivot desc]
    limit: 5000
    column_limit: 50
    stacking: normal
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    series_colors:
      AB-Inbev: red
      Competitor: Blue
    limit_displayed_rows: false
    hidden_series: [AB-InBev, sort_pivot]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: custom
    y_axis_tick_density_custom: 20
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_labels: false
