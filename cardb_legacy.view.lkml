view: cardb_legacy {
  sql_table_name: public.cardb_legacy ;;

  dimension: drive_type {
    type: string
    sql: ${TABLE}.drive_type ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.fuel_type ;;
  }

  dimension: make {
    type: string
    sql: ${TABLE}.make ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: mpg {
    type: number
    sql: ${TABLE}.mpg ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.style ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: transmission {
    type: string
    sql: ${TABLE}.transmission ;;
  }

  dimension: trim {
    type: string
    sql: ${TABLE}.trim ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
