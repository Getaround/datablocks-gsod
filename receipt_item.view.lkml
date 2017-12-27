view: receipt_item {
  sql_table_name: public.receipt_item ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: canceled {
    type: yesno
    sql: ${TABLE}.canceled ;;
  }

  dimension: charge_item_id {
    type: string
    sql: ${TABLE}.charge_item_id ;;
  }

  dimension: deposit_forfeited {
    type: yesno
    sql: ${TABLE}.deposit_forfeited ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_code {
    type: string
    sql: ${TABLE}.discount_code ;;
  }

  dimension: duration_days {
    type: number
    sql: ${TABLE}.duration_days ;;
  }

  dimension: duration_hours {
    type: number
    sql: ${TABLE}.duration_hours ;;
  }

  dimension: duration_weeks {
    type: number
    sql: ${TABLE}.duration_weeks ;;
  }

  dimension: insurance_amount {
    type: number
    sql: ${TABLE}.insurance_amount ;;
  }

  dimension: item_type {
    type: string
    sql: ${TABLE}.item_type ;;
  }

  dimension: owner_amount {
    type: number
    sql: ${TABLE}.owner_amount ;;
  }

  dimension: passthrough_fee_id {
    type: string
    sql: ${TABLE}.passthrough_fee_id ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: reimbursement_amount {
    type: number
    sql: ${TABLE}.reimbursement_amount ;;
  }

  dimension: trip_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.trip_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, trip.car_profile_carname, trip.id]
  }
}
