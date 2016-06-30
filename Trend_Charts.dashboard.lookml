- dashboard: trend_charts
  title: Trend Charts
  layout: grid
  rows:
    - elements: [TBUtrendchart]
      height: 540

  filters:
  - name: country
    title: 'Country'
    type: field_filter
    explore: spm_fact_rev2
    field: spm_fact_rev2.Country
    default_value: "Korea"

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

  - name: TBUtrendchart
    title: Trend Chart Relative Change Flagged
    type: Trend
    model: demo_abi_tip
    explore: spm_fact_rev2
    dimensions: [spm_fact_rev2.Year, spm_fact_rev2.Semester]
    measures: [spm_fact_rev2.Avg_TBU]
    listen:
      country: spm_fact_rev2.Country
      semester: spm_fact_rev2.Semester
      year: spm_fact_rev2.Year
    sorts: [spm_fact_rev2.Year, spm_fact_rev2.Semester]
    limit: 500


