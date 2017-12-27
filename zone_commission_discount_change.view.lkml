view: zone_commission_discount_change {
  sql_table_name: public.zone_commission_discount_change ;;

  dimension: commission_discount {
    type: number
    sql: ${TABLE}.commission_discount ;;
  }

  dimension_group: valid_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.valid_start ;;
  }

  dimension: zone_abbreviation {
    type: string
    sql: ${TABLE}.zone_abbreviation ;;
  }

  dimension: zone_key {
    type: string
    sql: ${TABLE}.zone_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
