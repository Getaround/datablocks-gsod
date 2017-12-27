view: trip_extension_item {
  sql_table_name: public.trip_extension_item ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: braintree_id {
    type: string
    sql: ${TABLE}.braintree_id ;;
  }

  dimension: days_quantity {
    type: number
    sql: ${TABLE}.days_quantity ;;
  }

  dimension: days_total {
    type: number
    sql: ${TABLE}.days_total ;;
  }

  dimension: extension_discount_total {
    type: number
    sql: ${TABLE}.extension_discount_total ;;
  }

  dimension: hours_quantity {
    type: number
    sql: ${TABLE}.hours_quantity ;;
  }

  dimension: hours_total {
    type: number
    sql: ${TABLE}.hours_total ;;
  }

  dimension: pricing_coefficients_base_price {
    type: number
    sql: ${TABLE}.pricing_coefficients_base_price ;;
  }

  dimension: pricing_coefficients_duration_factor {
    type: number
    sql: ${TABLE}.pricing_coefficients_duration_factor ;;
  }

  dimension: pricing_coefficients_factors {
    type: string
    sql: ${TABLE}.pricing_coefficients_factors ;;
  }

  dimension_group: pricing_coefficients_timestamp {
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
    sql: ${TABLE}.pricing_coefficients_timestamp ;;
  }

  dimension: pricing_coefficients_user_factor {
    type: number
    sql: ${TABLE}.pricing_coefficients_user_factor ;;
  }

  dimension: stripe_id {
    type: string
    sql: ${TABLE}.stripe_id ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: trip_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.trip_id ;;
  }

  dimension: weeks_quantity {
    type: number
    sql: ${TABLE}.weeks_quantity ;;
  }

  dimension: weeks_total {
    type: number
    sql: ${TABLE}.weeks_total ;;
  }

  dimension: young_driver_fee_percent {
    type: number
    sql: ${TABLE}.young_driver_fee_percent ;;
  }

  dimension: young_driver_fee_percent_denominator {
    type: number
    sql: ${TABLE}.young_driver_fee_percent_denominator ;;
  }

  dimension: young_driver_fee_percent_numerator {
    type: number
    sql: ${TABLE}.young_driver_fee_percent_numerator ;;
  }

  dimension: young_driver_fee_total {
    type: number
    sql: ${TABLE}.young_driver_fee_total ;;
  }

  measure: count {
    type: count
    drill_fields: [id, trip.car_profile_carname, trip.id]
  }
}
