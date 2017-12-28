view: rs_zipcode_station {
  sql_table_name: datablocks_gsod.zipcode_station ;;

    dimension: primary_key {
      type: string
      primary_key: yes
      hidden: yes
      sql: ${zipcode} ||  ${TABLE}.year::text ;;
    }

    dimension: zipcode {
      group_label: "Zipcode"
      label: "ZIP (ZCTA)"
      type: zipcode
      map_layer_name: us_zipcode_tabulation_areas
      sql: RPAD(${TABLE}.zip_code, 5, '0') ;;
    }

    dimension: nearest_station_id {
      group_label: "Zipcode"
      type: string
      sql: ${TABLE}.nearest_station_id ;;
    }

    dimension: year {
      hidden: yes
      type: number
      sql: ${TABLE}.year ;;
    }

    dimension: distance_from_nearest_station {
      group_label: "Zipcode"
      type: number
      sql: ${TABLE}.distance_from_nearest_station ;;
    }

    set: detail {
      fields: [zipcode, nearest_station_id, distance_from_nearest_station]
    }
  }
