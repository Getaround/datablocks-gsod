view: price_change {
  sql_table_name: public.price_change ;;

  dimension: car_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.car_id ;;
  }

  dimension: price_daily {
    type: number
    sql: ${TABLE}.price_daily ;;
  }

  dimension: price_hourly {
    type: number
    sql: ${TABLE}.price_hourly ;;
  }

  dimension: price_weekly {
    type: number
    sql: ${TABLE}.price_weekly ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  measure: count {
    type: count
    drill_fields: [car.profile_carname, car.id]
  }
}
