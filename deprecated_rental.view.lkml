view: deprecated_rental {
  sql_table_name: public.deprecated_rental ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: bundle_id {
    type: string
    sql: ${TABLE}.bundle_id ;;
  }

  dimension: car_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.car_id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: geom {
    type: string
    sql: ${TABLE}.geom ;;
  }

  dimension: geom_webmercator {
    type: string
    sql: ${TABLE}.geom_webmercator ;;
  }

  dimension: mode {
    type: string
    sql: ${TABLE}.mode ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: receipt_discount_amount {
    type: number
    sql: ${TABLE}.receipt_discount_amount ;;
  }

  dimension: receipt_discount_code {
    type: string
    sql: ${TABLE}.receipt_discount_code ;;
  }

  dimension: receipt_fees_booking {
    type: number
    sql: ${TABLE}.receipt_fees_booking ;;
  }

  dimension: receipt_fees_license {
    type: number
    sql: ${TABLE}.receipt_fees_license ;;
  }

  dimension: receipt_price_rental {
    type: number
    sql: ${TABLE}.receipt_price_rental ;;
  }

  dimension: renter_id {
    type: string
    sql: ${TABLE}.renter_id ;;
  }

  dimension: request_id {
    type: string
    sql: ${TABLE}.request_id ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, car.profile_carname, car.id]
  }
}
