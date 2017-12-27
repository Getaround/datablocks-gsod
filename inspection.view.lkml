view: inspection {
  sql_table_name: public.inspection ;;

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

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
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

  dimension: damaged_or_unclean {
    type: yesno
    sql: ${TABLE}.damaged_or_unclean ;;
  }

  dimension: inspection_type {
    type: string
    sql: ${TABLE}.inspection_type ;;
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

  dimension: odor {
    type: yesno
    sql: ${TABLE}.odor ;;
  }

  dimension: photos {
    type: string
    sql: ${TABLE}.photos ;;
  }

  dimension: reported_issue {
    type: yesno
    sql: ${TABLE}.reported_issue ;;
  }

  dimension: request_id {
    type: number
    sql: ${TABLE}.request_id ;;
  }

  dimension: skipped {
    type: yesno
    sql: ${TABLE}.skipped ;;
  }

  dimension: unsafe {
    type: yesno
    sql: ${TABLE}.unsafe ;;
  }

  dimension_group: updated_by_user {
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
    sql: ${TABLE}.updated_by_user_at ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: zendesk_id {
    type: string
    sql: ${TABLE}.zendesk_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, car.profile_carname, car.id, inspection_comment.count, inspection_photo.count]
  }
}
