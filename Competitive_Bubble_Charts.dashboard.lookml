- dashboard: competitive_bubble_charts
  title: Competitive Bubble Charts
  layout: grid
  rows:
    - elements: [Bubble-chart]
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
  - name: Bubble-chart
    title: Colour EBC-Single
    type: N4
    model: demo_abi_tip
    explore: spm_fact_rev2
    dimensions: [spm_fact_rev2.Brand_codes, spm_fact_rev2.AB_Inbev_Competitors]
    measures: [spm_fact_rev2.Avg_TBU, spm_fact_rev2.Avg_Colour, spm_fact_rev2.Avg_ABV]
    listen:
      country: spm_fact_rev2.Country
      semester: spm_fact_rev2.Semester
      year: spm_fact_rev2.Year
    sorts: [spm_fact_rev2.avg_tbu desc]
    limit: 500
  

