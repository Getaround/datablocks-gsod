view: car_status_snapshot {
  sql_table_name: public.car_status_snapshot ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: car_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.car_id ;;
  }

  dimension_group: changed {
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
    sql: ${TABLE}.changed_at ;;
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

  dimension: status_after {
    type: string
    sql: ${TABLE}.status_after ;;
  }

  dimension: status_before {
    type: string
    sql: ${TABLE}.status_before ;;
  }

  dimension: status_reason {
    type: string
    sql: ${TABLE}.status_reason ;;
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
