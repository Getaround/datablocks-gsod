view: rs_stations {
  sql_table_name: datablocks_gsod.stations ;;

  dimension: station_id {
    primary_key: yes
    type: string
    sql: CASE WHEN ${TABLE}.wban = '99999' THEN ${TABLE}.usaf ELSE ${TABLE}.wban END;;
  }

  dimension_group: time_begin_at_local {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_week_index,
      day_of_month,
      year,
      week_of_year,
      month_num,
      quarter_of_year
    ]
    sql: ${TABLE}.begin ;;
    convert_tz: no
  }

  dimension_group: time_end_at_local {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      day_of_week,
      day_of_week_index,
      day_of_month,
      year,
      week_of_year,
      month_num,
      quarter_of_year
    ]
    sql: ${TABLE}.end ;;
    convert_tz: no
  }

  dimension: call {
    type: string
    sql: ${TABLE}.call ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: elev {
    type: string
    sql: ${TABLE}.elev ;;
  }

  dimension: latitude {
    hidden: yes
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: location {
    type: location
    sql_latitude:${latitude};;
    sql_longitude:${longitude};;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count_distinct_station {
    type: count_distinct
    sql: ${station_id} ;;
  }
}
