view: user_education_history {
  sql_table_name: public.user_education_history ;;

  dimension: school_facebook_id {
    type: string
    sql: ${TABLE}.school_facebook_id ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}.school_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: user_facebook_id {
    type: string
    sql: ${TABLE}.user_facebook_id ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [school_name]
  }
}
