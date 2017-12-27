view: fraud_profile {
  sql_table_name: public.fraud_profile ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: authorization_account {
    type: string
    sql: ${TABLE}.authorization_account ;;
  }

  dimension: authorization_authorized_amount {
    type: number
    sql: ${TABLE}.authorization_authorized_amount ;;
  }

  dimension_group: authorization_created {
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
    sql: ${TABLE}.authorization_created ;;
  }

  dimension: authorization_external_id {
    type: string
    sql: ${TABLE}.authorization_external_id ;;
  }

  dimension_group: authorization_modified {
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
    sql: ${TABLE}.authorization_modified ;;
  }

  dimension: authorization_order_id {
    type: string
    sql: ${TABLE}.authorization_order_id ;;
  }

  dimension: authorization_transaction {
    type: string
    sql: ${TABLE}.authorization_transaction ;;
  }

  dimension: authorization_user {
    type: string
    sql: ${TABLE}.authorization_user ;;
  }

  dimension_group: authorization_voided {
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
    sql: ${TABLE}.authorization_voided ;;
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

  dimension: credit_card_details_flag {
    type: string
    sql: ${TABLE}.credit_card_details_flag ;;
  }

  dimension: credit_card_details_fullname {
    type: string
    sql: ${TABLE}.credit_card_details_fullname ;;
  }

  dimension: credit_card_details_normalized_score {
    type: number
    sql: ${TABLE}.credit_card_details_normalized_score ;;
  }

  dimension: credit_card_details_score {
    type: number
    sql: ${TABLE}.credit_card_details_score ;;
  }

  dimension: driver_details_firstname {
    type: string
    sql: ${TABLE}.driver_details_firstname ;;
  }

  dimension: driver_details_flag {
    type: string
    sql: ${TABLE}.driver_details_flag ;;
  }

  dimension: driver_details_lastname {
    type: string
    sql: ${TABLE}.driver_details_lastname ;;
  }

  dimension: driver_details_middlename {
    type: string
    sql: ${TABLE}.driver_details_middlename ;;
  }

  dimension: driver_details_normalized_score {
    type: number
    sql: ${TABLE}.driver_details_normalized_score ;;
  }

  dimension: driver_details_num_drivers_licenses {
    type: number
    sql: ${TABLE}.driver_details_num_drivers_licenses ;;
  }

  dimension: driver_details_score {
    type: number
    sql: ${TABLE}.driver_details_score ;;
  }

  dimension: facebook_details_firstname {
    type: string
    sql: ${TABLE}.facebook_details_firstname ;;
  }

  dimension: facebook_details_flag {
    type: string
    sql: ${TABLE}.facebook_details_flag ;;
  }

  dimension: facebook_details_lastname {
    type: string
    sql: ${TABLE}.facebook_details_lastname ;;
  }

  dimension: facebook_details_middlename {
    type: string
    sql: ${TABLE}.facebook_details_middlename ;;
  }

  dimension: facebook_details_normalized_score {
    type: number
    sql: ${TABLE}.facebook_details_normalized_score ;;
  }

  dimension: facebook_details_num_distrusted_friends {
    type: number
    sql: ${TABLE}.facebook_details_num_distrusted_friends ;;
  }

  dimension: facebook_details_num_friends {
    type: number
    sql: ${TABLE}.facebook_details_num_friends ;;
  }

  dimension: facebook_details_num_investigating_friends {
    type: number
    sql: ${TABLE}.facebook_details_num_investigating_friends ;;
  }

  dimension: facebook_details_score {
    type: number
    sql: ${TABLE}.facebook_details_score ;;
  }

  dimension: facebook_details_verified {
    type: yesno
    sql: ${TABLE}.facebook_details_verified ;;
  }

  dimension: global_summary_cc_dl_full_score {
    type: number
    sql: ${TABLE}.global_summary_cc_dl_full_score ;;
  }

  dimension: global_summary_fb_cc_full_score {
    type: number
    sql: ${TABLE}.global_summary_fb_cc_full_score ;;
  }

  dimension: global_summary_fb_dl_full_score {
    type: number
    sql: ${TABLE}.global_summary_fb_dl_full_score ;;
  }

  dimension: global_summary_overall_flag {
    type: string
    sql: ${TABLE}.global_summary_overall_flag ;;
  }

  dimension: global_summary_overall_score {
    type: number
    sql: ${TABLE}.global_summary_overall_score ;;
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

  dimension: on_blacklist {
    type: yesno
    sql: ${TABLE}.on_blacklist ;;
  }

  dimension: request_bundle_id {
    type: string
    sql: ${TABLE}.request_bundle_id ;;
  }

  dimension: trip_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.trip_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      facebook_details_middlename,
      facebook_details_lastname,
      facebook_details_firstname,
      driver_details_middlename,
      driver_details_lastname,
      driver_details_firstname,
      credit_card_details_fullname,
      trip.car_profile_carname,
      trip.id
    ]
  }
}
