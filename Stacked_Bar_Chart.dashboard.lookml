- dashboard: stacked_bar_chart
  title: Stacked Bar Chart
  layout: grid
  rows:
    - elements: [Higher-Alcohol-Stacked]
      height: 540


  filters:
  - name: country
    title: 'Country'
    type: field_filter
    explore: spm_fact_rev2
    field: spm_fact_rev2.Country
    default_value: "Brazil"

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


  elements:
  
  - name: Higher-Alcohol-Stacked
    title: Higher Alcohol
    type: looker_bar
    model: demo_abi_tip
    explore: spm_fact_rev2
    dimensions: [spm_fact_rev2.Brand_codes]
    measures: [spm_fact_rev2.n_propanol_ppm, spm_fact_rev2.Isoamyl_Alcohol_ppm, spm_fact_rev2.Iso_Butanol_ppm]
    dynamic_fields:
    - table_calculation: row_totals
      label: Row_Totals
      expression: if(is_null(${spm_fact_rev2.n_propanol_ppm}),0,${spm_fact_rev2.n_propanol_ppm})+if(is_null(${spm_fact_rev2.Isoamyl_Alcohol_ppm}),0,${spm_fact_rev2.Isoamyl_Alcohol_ppm})+if(is_null(${spm_fact_rev2.Iso_Butanol_ppm}),0,${spm_fact_rev2.Iso_Butanol_ppm})
    hidden_fields: [row_totals]
    listen:
      country: spm_fact_rev2.Country
      semester: spm_fact_rev2.Semester
      year: spm_fact_rev2.Year
    sorts: [row_totals desc]
    limit: 500
    stacking: normal
    colors: ['#62bad4', '#a9c574', '#929292', '#9fdee0', '#1f3e5a', '#90c8ae', '#92818d',
      '#c5c6a6', '#82c2ca', '#cee0a0', '#928fb4', '#9fc190']
    show_value_labels: false
    label_density: 25
    legend_position: right
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
   # y_axis_min: ['0']
   # y_axis_max: ['300']
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: custom
    y_axis_tick_density_custom: 10
    show_x_axis_label: true
    x_axis_label: Brand Code
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'