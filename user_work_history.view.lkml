view: user_work_history {
  sql_table_name: public.user_work_history ;;

  dimension: employer_facebook_id {
    type: string
    sql: ${TABLE}.employer_facebook_id ;;
  }

  dimension: employer_name {
    type: string
    sql: ${TABLE}.employer_name ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.position ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }

  dimension: user_facebook_id {
    type: string
    sql: ${TABLE}.user_facebook_id ;;
  }

  measure: count {
    type: count
    drill_fields: [employer_name]
  }
}
