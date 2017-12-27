view: inspection_comment {
  sql_table_name: public.inspection_comment ;;

  dimension: inspection_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.inspection_id ;;
  }

  dimension_group: left {
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
    sql: ${TABLE}.left_at ;;
  }

  dimension: location_latitude {
    type: number
    sql: ${TABLE}.location_latitude ;;
  }

  dimension: location_longitude {
    type: number
    sql: ${TABLE}.location_longitude ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  measure: count {
    type: count
    drill_fields: [inspection.id]
  }
}
