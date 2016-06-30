- view: spm_fact_rev2
  sql_table_name: spm.spm_fact
  fields:
#########################################
#                                       #
#             DIMENSIONS                #
#                                       #
#########################################

  - dimension: AB_Inbev_Competitors
    type: string
    sql: ${TABLE}.AB_Inbev_Competitors

  - dimension: Brand_codes
    type: number
    sql: ${TABLE}.Brand_codes

  - dimension: Brewery_name
    type: string
    sql: ${TABLE}.Brewery_name

  - dimension: Country
    type: string
    sql: ${TABLE}.Country

  - dimension: Evolution
    type: string
    sql: ${TABLE}.Evolution

  - dimension: Liquid_category
    type: string
    sql: ${TABLE}.Liquid_category

  - dimension: Semester
    type: string
    sql: ${TABLE}.Semester

  - dimension: Specifications_or_analysis_batches_batch_1_2_3
    type: string
    sql: ${TABLE}.Specifications_or_analysis_batches_batch_1_2_3

  - dimension: Type_of_pack
    type: string
    sql: ${TABLE}.Type_of_pack

  - dimension: Year
    type: number
    sql: ${TABLE}.Year

#########################################
#                                       #
#             MEASURES                  #
#                                       #
#########################################

########## Calculated Grouping ##########
  - measure: abw
    type: average
    label: 'ABW'
    drill_fields: [abw, Brand_codes]
    group_label: 'Calculated'

  - measure: Ash_g_100g
    label: 'ash g/100g'
    type: average
    drill_fields: [Ash_g_100g, Brand_codes]
    group_label: 'Calculated'

  - measure: calories_calculated_kcal_100_ml
    label: 'Calories Calc Kcal/ 100ml'
    type: average
    drill_fields: [calories_calculated_kcal_100_ml, Brand_codes]
    group_label: 'Calculated'

  - measure: carbohydrates_calculatedg_100g
    label: 'Carbohydrates Calc g/100g'
    drill_fields: [carbohydrates_calculatedg_100g, Brand_codes]
    group_label: 'Calculated'

  - measure: Protein_g_100g
    label: 'Protein g/100g'
    type: average
    drill_fields: [Protein_g_100g, Brand_codes]
    group_label: 'Calculated'

  - measure: re_calculated_p
    type: average
    label: 'RE Calc (P)'
    drill_fields: [re_calculated_p, Brand_codes]
    group_label: 'Calculated'

  - measure: sg_20_20
    type: average
    label: 'SG 20/20'
    drill_fields: [sg_20_20, Brand_codes]
    group_label: 'Calculated'

########### Headspace Grouping######################

  - measure: acetaldehyde_ppm
    type: average
    label: 'Acetaldehyde ppm'
    drill_fields: [acetaldehyde_ppm, Brand_codes]
    group_label: 'Headspace'


  - measure: dimethylsulphide_dms_ppb
    type: average
    label: 'Dimethylsulphide DMS(ppb)'
    drill_fields: [dimethylsulphide_dms_ppb, Brand_codes]
    group_label: 'Headspace'

  - measure: esters
    type: average
    label: 'Esters'
    drill_fields: [esters, Brand_codes]
    group_label: 'Headspace'

  - measure: ethyl_acetate_ppm
    type: average
    label: 'Ethyl Acetate (ppm)'
    drill_fields: [ethyl_acetate_ppm, Brand_codes]
    group_label: 'Headspace'

  - measure: free_diacetyl_gc_ppb
    type: average
    label: 'Free Diacetyl (GC.ppb)'
    drill_fields: [free_diacetyl_gc_ppb, Brand_codes]
    group_label: 'Headspace'

  - measure: higher_alcohols
    type: average
    label: 'Higher Alcohols'
    drill_fields: [higher_alcohols, Brand_codes]
    group_label: 'Headspace'

  - measure: Iso_Butanol_ppm
    type: average
    label: 'Iso Butanol (ppm)'
    drill_fields: [Iso_Butanol_ppm, Brand_codes]
    group_label: 'Headspace'

  - measure: Isoamyl_Acetate_ppm
    type: average
    label: 'Isoamyl Acetate (ppm)'
    drill_fields: [Isoamyl_Acetate_ppm, Brand_codes]
    group_label: 'Headspace'

  - measure: Isoamyl_Alcohol_ppm
    type: average
    label: 'Isoamyl Alcohol (ppm)'
    drill_fields: [Isoamyl_Alcohol_ppm, Brand_codes]
    group_label: 'Headspace'

  - measure: n_propanol_ppm
    type: average
    label: 'n proponal (ppm)'
    drill_fields: [n_propanol_ppm, Brand_codes]
    group_label: 'Headspace'

  - measure: pentanedione__gc_ppb_
    type: average
    label: 'Pentanedione (GC.ppb)'
    drill_fields: [pentanedione__gc_ppb_, Brand_codes]
    group_label: 'Headspace'

  - measure: ratio_higher_alcohols_esters
    type: average
    label: 'Ratio HIgher Alcohols/Esters'
    drill_fields: [ratio_higher_alcohols_esters, Brand_codes]
    group_label: 'Headspace'


############### TBU grouping #########################

  - measure: Dihydro_Isohumulones_Rho_ppm
    type: average
    label: 'Dihydro_IsoH (Rho.ppm)'
    drill_fields: [Dihydro_Isohumulones_Rho_ppm, Brand_codes]
    group_label: 'TBU'

  - measure: hexa_hplc_optional
    type: average
    label: 'Hexa HPLC (optional)'
    drill_fields: [hexa_hplc_optional, Brand_codes]
    group_label: 'TBU'

  - measure: iso_alpha_acids_ppm
    type: average
    label: 'Iso-Alpha-Acids (ppm)'
    drill_fields: [iso_alpha_acids_ppm, Brand_codes]
    group_label: 'TBU'

  - measure: tasted_bitterness_tbu
    type: average
    label: 'TBU'
    drill_fields: [tasted_bitterness_tbu, Brand_codes]
    group_label: 'TBU'

  - measure: tetrahydro_isohumulones_ppm
    type: average
    label: 'TetraHydro IsoH (ppm)'
    drill_fields: [tetrahydro_isohumulones_ppm, Brand_codes]
    group_label: 'TBU'


############## MAIN grouping##################################
  - measure: Alcohol_by_Volume_ml_100ml
    type: average
    label: 'ABV'
    drill_fields: [Alcohol_by_Volume_ml_100ml, Brand_codes]
    group_label: 'MAIN'

  - measure: apparent_extract_p
    type: average
    label: 'AE'
    drill_fields: [apparent_extract_p, Brand_codes]
    group_label: 'MAIN'


  - measure: bitterness_bu50
    type: average
    label: 'BU50'
    drill_fields: [bitterness_bu50, Brand_codes]
    group_label: 'MAIN'

  - measure: bitterness_bu57
    type: average
    label: 'BU57'
    drill_fields: [bitterness_bu57, Brand_codes]
    group_label: 'MAIN'

  - measure: co2_g_l
    type: average
    label: 'Co2 g/l'
    drill_fields: [co2_g_l, Brand_codes]
    group_label: 'MAIN'
    html: |
      {% if (value > 5 AND value < 6) OR (value > 0 AND value < 2) %}
          <p style="color: black; background-color: yellow; font-size:100%; text-align:center">{{ rendered_value }} H1</p>
          <br>
          <p style="color: black; background-color: yellow; font-size:100%; text-align:center">{{ rendered_value }} "Raj"</p>
          <br>
          <p style="color: black; background-color: yellow; font-size:100%; text-align:center">{{ rendered_value }} H2</p>
      {% endif %}

  - measure: colour_ebc
    type: average
    label: 'Colour'
    drill_fields: [colour_ebc, Brand_codes]
    group_label: 'MAIN'

  - measure: foam_s
    type: average
    label: 'Foam'
    drill_fields: [foam_s, Brand_codes]
    group_label: 'MAIN'

  - measure: haze_0_c_90_scatter_ebc
    type: average
    label: 'Haze'
    drill_fields: [haze_0_c_90_scatter_ebc, Brand_codes]
    group_label: 'MAIN'

  - measure: original_extract_p
    type: average
    label: 'Original Extract'
    drill_fields: [original_extract_p, Brand_codes]
    group_label: 'MAIN'

  - measure: p_h
    type: average
    label: 'PH'
    drill_fields: [p_h, Brand_codes]
    group_label: 'MAIN'

  - measure: real_extract
    type: string
    sql: ${TABLE}.real_extract
    label: 'Real Extract'
    drill_fields: [real_extract, Brand_codes]
    group_label: 'MAIN'

  - measure: total_diacetyl_ppb
    type: average
    label: 'Total Diacetyl(ppb)'
    drill_fields: [total_diacetyl_ppb, Brand_codes]
    group_label: 'MAIN'

############## Market Grouping #######################
  - measure: Share_of_Market
    type: average
    label: 'Share of Market'
    drill_fields: [Share_of_Market, Brand_codes]
    group_label: 'Market'

############# Other grouping ##########################
  - measure: calories_optional
    type: average
    label: 'Calories'
    drill_fields: [calories_optional, Brand_codes]
    group_label: 'Other'

  - measure: total_carbohydrates_optional
    type: average
    label: 'Tot.Carbohydrates'
    drill_fields: [total_carbohydrates_optional, Brand_codes]
    group_label: 'Other'


  - measure: count
    type: count
    approximate_threshold: 100000
    drill_fields: [Brewery_name]

  - measure: comp_count
    type: count
    filters:
      AB_Inbev_Competitors:
############# Hack For Drop Down Measure ###################
  - filter: select_a_measure
    label: 'Select A Measure'
    suggestions: ['Hexa HPLC (optional)','Iso-Alpha-Acids (ppm)','TetraHydro IsoH (ppm)']

  - dimension: my_field
    type: number
    sql: |
      CASE
      WHEN {%condition select_a_measure %} 'Hexa HPLC (optional)' {% endcondition %} THEN ${hexa_hplc_optional}
      WHEN {%condition select_a_measure %} 'Iso-Alpha-Acids (ppm)' {% endcondition %} THEN ${iso_alpha_acids_ppm}
      WHEN {%condition select_a_measure %} 'TetraHydro IsoH (ppm)' {% endcondition %} THEN ${tetrahydro_isohumulones_ppm}
      ELSE ${hexa_hplc_optional}
      end

  - measure: TBU
    type: average
    sql: ${my_field}



############# Hack For Drop Down Main ###################

  - filter: select_a_MAIN_measure
    label: 'Select A Main Measure'
    suggestions: ['ABV','AE','BU50','BU57','Co2 g/l','Colour','Foam','Original Extract','Total Diacetyl(ppb)']

  - dimension: Main_field
    type: number
#   ,'Real Extract' missing   WHEN {%condition select_a_measure %} 'Real Extract' {% endcondition %} THEN ${real_extract}
#   'Haze', missing    WHEN {%condition select_a_measure %} 'Haze' {% endcondition %} THEN ${haze_0_c_90_scatter_ebc}
#   ,'PH' missing     WHEN {%condition select_a_measure %} 'PH' {% endcondition %} THEN ${p_h}
    sql: |
      CASE
      WHEN {%condition select_a_measure %} 'ABV' {% endcondition %} THEN ${Alcohol_by_Volume_ml_100ml}
      WHEN {%condition select_a_measure %} 'AE' {% endcondition %} THEN ${apparent_extract_p}
      WHEN {%condition select_a_measure %} 'BU57' {% endcondition %} THEN ${bitterness_bu50}
      WHEN {%condition select_a_measure %} 'Co2 g/l' {% endcondition %} THEN ${bitterness_bu57}
      WHEN {%condition select_a_measure %} 'Colour' {% endcondition %} THEN ${colour_ebc}
      WHEN {%condition select_a_measure %} 'Foam' {% endcondition %} THEN ${foam_s}
      WHEN {%condition select_a_measure %} 'Original Extract' {% endcondition %} THEN ${original_extract_p}
      WHEN {%condition select_a_measure %} 'Total Diacetyl(ppb)' {% endcondition %} THEN ${total_diacetyl_ppb}
      ELSE ${Alcohol_by_Volume_ml_100ml}
      end

  - measure: 'MAIN'
    type: average
    sql: ${Main_field}


############# Hack For Drop Down Headspace ###################

  - filter: select_a_HeadSpace_measure
    label: 'Select A Headspace Measure'
    suggestions: ['Acetaldehyde ppm','Dimethylsulphide DMS(ppb)','Esters','Ethyl Acetate (ppm)','Free Diacetyl (GC.ppb)','Higher Alcohols','Iso Butanol (ppm)','Isoamyl Acetate (ppm)','Isoamyl Alcohol (ppm)','n proponal (ppm)','Pentanedione (GC.ppb)','Ratio HIgher Alcohols/Esters']

  - dimension: Headspace_field
    type: number
    sql: |
      CASE
      WHEN {%condition select_a_measure %} 'Acetaldehyde ppm' {% endcondition %} THEN ${acetaldehyde_ppm}
      WHEN {%condition select_a_measure %} 'Dimethylsulphide DMS(ppb)' {% endcondition %} THEN ${dimethylsulphide_dms_ppb}
      WHEN {%condition select_a_measure %} 'Esters' {% endcondition %} THEN ${esters}
      WHEN {%condition select_a_measure %} 'Ethyl Acetate (ppm)' {% endcondition %} THEN ${ethyl_acetate_ppm}
      WHEN {%condition select_a_measure %} 'Free Diacetyl (GC.ppb)' {% endcondition %} THEN ${free_diacetyl_gc_ppb}
      WHEN {%condition select_a_measure %} 'Higher Alcohols' {% endcondition %} THEN ${higher_alcohols}
      WHEN {%condition select_a_measure %} 'Iso Butanol (ppm)' {% endcondition %} THEN ${Iso_Butanol_ppm}
      WHEN {%condition select_a_measure %} 'Isoamyl Acetate (ppm)' {% endcondition %} THEN ${Isoamyl_Acetate_ppm}
      WHEN {%condition select_a_measure %} 'Isoamyl Alcohol (ppm)' {% endcondition %} THEN ${Isoamyl_Alcohol_ppm}
      WHEN {%condition select_a_measure %} 'n proponal (ppm)' {% endcondition %} THEN ${n_propanol_ppm}
      WHEN {%condition select_a_measure %} 'Pentanedione (GC.ppb)' {% endcondition %} THEN ${pentanedione__gc_ppb_}
      WHEN {%condition select_a_measure %} 'Ratio HIgher Alcohols/Esters' {% endcondition %} THEN ${ratio_higher_alcohols_esters}
      ELSE ${Alcohol_by_Volume_ml_100ml}
      end

  - measure: Headspace_measure
    type: average
    sql: ${Headspace_field}
    
  - measure: Avg_ABV
    type: average
    sql: ${Alcohol_by_Volume_ml_100ml}
    
  - measure: Avg_Colour
    type: average
    sql: ${colour_ebc}
    
  - measure: Avg_TBU
    type: average
    sql: ${tasted_bitterness_tbu}

