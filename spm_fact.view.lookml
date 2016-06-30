- view: spm_fact
  sql_table_name: spm.spm_fact
  fields:

  - dimension: ab_inbev_competitors
    type: string
    sql: ${TABLE}.AB_Inbev_Competitors

  - dimension: abw
    type: number
    sql: ${TABLE}.ABW

  - dimension: acetaldehyde_ppm
    type: number
    sql: ${TABLE}.Acetaldehyde_ppm

  - dimension: alcohol_by_volume_ml_100ml
    type: number
    sql: ${TABLE}.Alcohol_by_Volume_ml_100ml

  - dimension: apparent_extract_p
    type: number
    sql: ${TABLE}.Apparent_Extract_P

  - dimension: ash_g_100g
    type: number
    sql: ${TABLE}.Ash_g_100g

  - dimension: bitterness_bu50
    type: number
    sql: ${TABLE}.Bitterness_BU50

  - dimension: bitterness_bu57
    type: number
    sql: ${TABLE}.Bitterness_BU57

  - dimension: brand_codes
    type: number
    sql: ${TABLE}.Brand_codes

  - dimension: brewery_name
    type: string
    sql: ${TABLE}.Brewery_name

  - dimension: calories_calculated_kcal_100_ml
    type: number
    sql: ${TABLE}.Calories_calculated_Kcal_100_ml

  - dimension: calories_optional
    type: number
    sql: ${TABLE}.Calories_Optional

  - dimension: carbohydrates_calculated_g_100g
    type: number
    sql: ${TABLE}.Carbohydrates_calculated_g_100g

  - dimension: cleaning_status
    type: string
    sql: ${TABLE}.Cleaning_status

  - dimension: co2_g_l
    type: number
    sql: ${TABLE}.CO2_g_l

  - dimension: colour_ebc
    type: number
    sql: ${TABLE}.Colour_EBC

  - dimension: country
    type: string
    sql: ${TABLE}.Country

  - dimension: dihydro_isohumulones_rho_ppm
    type: number
    sql: ${TABLE}.Dihydro_Isohumulones_Rho_ppm

  - dimension: dimethylsulphide_dms_ppb
    type: number
    sql: ${TABLE}.Dimethylsulphide_DMS_ppb

  - dimension: esters
    type: number
    sql: ${TABLE}.Esters

  - dimension: ethyl_acetate_ppm
    type: number
    sql: ${TABLE}.Ethyl_Acetate_ppm

  - dimension: evolution
    type: string
    sql: ${TABLE}.Evolution

  - dimension: foam_s
    type: number
    sql: ${TABLE}.Foam_s

  - dimension: free_diacetyl_gc_ppb
    type: number
    sql: ${TABLE}.Free_Diacetyl_GC_ppb

  - dimension: haze_0_c_90_scatter_ebc
    type: number
    sql: ${TABLE}.Haze_0_C_90_Scatter_EBC

  - dimension: hexa_hplc_optional
    type: number
    sql: ${TABLE}.Hexa_HPLC_Optional

  - dimension: higher_alcohols
    type: number
    sql: ${TABLE}.Higher_Alcohols

  - dimension: iso_alpha_acids_ppm
    type: number
    sql: ${TABLE}.Iso_alpha_acids_ppm

  - dimension: iso_butanol_ppm
    type: number
    sql: ${TABLE}.Iso_Butanol_ppm

  - dimension: isoamyl_acetate_ppm
    type: number
    sql: ${TABLE}.Isoamyl_Acetate_ppm

  - dimension: isoamyl_alcohol_ppm
    type: number
    sql: ${TABLE}.Isoamyl_Alcohol_ppm

  - dimension: liquid_category
    type: string
    sql: ${TABLE}.Liquid_category

  - dimension: n_propanol_ppm
    type: number
    sql: ${TABLE}.n_Propanol_ppm

  - dimension: original_extract_p
    type: number
    sql: ${TABLE}.Original_Extract_P

  - dimension: p_h
    type: number
    sql: ${TABLE}.pH

  - dimension: pentanedione_gc_ppb
    type: number
    sql: ${TABLE}.Pentanedione_GC_ppb

  - dimension: protein_g_100g
    type: number
    sql: ${TABLE}.Protein_g_100g

  - dimension: ratio_higher_alcohols_esters
    type: number
    sql: ${TABLE}.Ratio_Higher_alcohols_Esters

  - dimension: re_calculated_p
    type: number
    sql: ${TABLE}.RE_calculated_P

  - dimension: semester
    type: string
    sql: ${TABLE}.Semester

  - dimension: sg_20_20
    type: number
    sql: ${TABLE}.SG_20_20

  - dimension: share_of_market
    type: number
    sql: ${TABLE}.Share_of_Market

  - dimension: specifications_or_analysis_batches_batch_1_2_3
    type: string
    sql: ${TABLE}.Specifications_or_analysis_batches_batch_1_2_3

  - dimension: tasted_bitterness_tbu
    type: number
    sql: ${TABLE}.Tasted_Bitterness_TBU

  - dimension: tetrahydro_isohumulones_ppm
    type: number
    sql: ${TABLE}.Tetrahydro_Isohumulones_ppm

  - dimension: total_carbohydrates_optional
    type: number
    sql: ${TABLE}.Total_Carbohydrates_Optional

  - dimension: total_diacetyl_ppb
    type: number
    sql: ${TABLE}.Total_Diacetyl_ppb

  - dimension: type_of_pack
    type: string
    sql: ${TABLE}.Type_of_pack

  - dimension: year
    type: number
    sql: ${TABLE}.Year

  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: [brewery_name]

