view: renter_feedback {
  sql_table_name: public.renter_feedback ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: car_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.car_id ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
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

  dimension: negative_reasons {
    type: string
    sql: ${TABLE}.negative_reasons ;;
  }

  dimension: renter_id {
    type: number
    sql: ${TABLE}.renter_id ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.request_id ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}.score ;;
  }

  dimension_group: scored {
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
    sql: ${TABLE}.scored_at ;;
  }

  dimension: source_client {
    type: string
    sql: ${TABLE}.source_client ;;
  }

  dimension: zendesk_id {
    type: string
    sql: ${TABLE}.zendesk_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, car.profile_carname, car.id]
  }
}
