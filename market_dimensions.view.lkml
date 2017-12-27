view: market_dimensions {
  sql_table_name: public.market_dimensions ;;

  dimension: current_flag {
    type: yesno
    sql: ${TABLE}.current_flag ;;
  }

  dimension: market_abbreviation {
    type: string
    sql: ${TABLE}.market_abbreviation ;;
  }

  dimension: market_config_ids {
    type: string
    sql: ${TABLE}.market_config_ids ;;
  }

  dimension: market_country {
    type: string
    sql: ${TABLE}.market_country ;;
  }

  dimension: market_description {
    type: string
    sql: ${TABLE}.market_description ;;
  }

  dimension: market_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.market_id ;;
  }

  dimension: market_name {
    type: string
    sql: ${TABLE}.market_name ;;
  }

  dimension: market_region {
    type: string
    sql: ${TABLE}.market_region ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension_group: valid_end {
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
    sql: ${TABLE}.valid_end_at ;;
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
    sql: ${TABLE}.valid_start_at ;;
  }

  dimension: zone_abbreviation {
    type: string
    sql: ${TABLE}.zone_abbreviation ;;
  }

  dimension: zone_description {
    type: string
    sql: ${TABLE}.zone_description ;;
  }

  dimension: zone_group {
    type: string
    sql: ${TABLE}.zone_group ;;
  }

  dimension: zone_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.zone_id ;;
  }

  dimension: zone_launch_status {
    type: string
    sql: ${TABLE}.zone_launch_status ;;
  }

  dimension: zone_name {
    type: string
    sql: ${TABLE}.zone_name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      market_name,
      zone_name,
      market.id,
      market.name,
      zone.name,
      zone.id
    ]
  }
}
