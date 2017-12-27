view: inspection_photo {
  sql_table_name: public.inspection_photo ;;

  dimension: inspection_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.inspection_id ;;
  }

  dimension: location_latitude {
    type: number
    sql: ${TABLE}.location_latitude ;;
  }

  dimension: location_longitude {
    type: number
    sql: ${TABLE}.location_longitude ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.photo ;;
  }

  dimension_group: taken {
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
    sql: ${TABLE}.taken_at ;;
  }

  measure: count {
    type: count
    drill_fields: [inspection.id]
  }
}
