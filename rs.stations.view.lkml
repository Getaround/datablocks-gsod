view: rs_stations {
  sql_table_name: datablocks_gsod.stations ;;

  dimension: station_id {
    primary_key: yes
    type: string
    sql: CASE WHEN ${TABLE}.wban = '99999' THEN ${TABLE}.usaf ELSE ${TABLE}.wban END;;
  }

  dimension_group: time_begin_at {
    type: time
    convert_tz: no
    timeframes: [year, month, date]
    ## Needs to be updated
    sql: PARSE_DATE('%Y%m%d', ${TABLE}.begin) ;;
  }

  dimension_group: time_end_at {
    type: time
    timeframes: [year, month, date]
    convert_tz: no
    ## Needs to be updated
    sql: PARSE_DATE('%Y%m%d', ${TABLE}.end) ;;
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
