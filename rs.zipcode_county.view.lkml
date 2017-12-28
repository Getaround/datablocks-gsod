## ZIPCODE TO COUNTY mapping
## Every zipcode maps to exactly one county, based on the population of the zipcode.

view: rs_zipcode_county {
  derived_table: {
    persist_for: "10000 hours"
    sql:
      SELECT
      RPAD(zcta5::text, 5, '0') as zipcode,
      rpad(state, 2, '0') as state_code,
      rpad(geoid, 5, '0') as county_code
      FROM
      (SELECT *,
       ROW_NUMBER() OVER (PARTITION BY zcta5 ORDER BY ZPOPPCT DESC) row_num
       FROM datablocks_gsod.zcta_county_map
      ) AS x
      WHERE row_num = 1;;
    indexes: ["zipcode"]
  }

  dimension: zipcode {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.zipcode ;;
    type: zipcode
  }

  dimension: state_code {
    group_label: "State"
    hidden: yes
    type: string
    sql: ${TABLE}.state_code ;;
  }

  dimension: county_code {
    group_label: "County"
    map_layer_name: us_counties_fips
    type: string
    sql: ${TABLE}.county_code ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [zipcode, state_code, county_code]
  }
}
