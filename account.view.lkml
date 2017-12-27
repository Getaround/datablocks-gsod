view: account {
  sql_table_name: public.account ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: contact_address_city {
    type: string
    sql: ${TABLE}.contact_address_city ;;
  }

  dimension: contact_address_country {
    type: string
    sql: ${TABLE}.contact_address_country ;;
  }

  dimension: contact_address_postcode {
    type: string
    sql: ${TABLE}.contact_address_postcode ;;
  }

  dimension: contact_address_region {
    type: string
    sql: ${TABLE}.contact_address_region ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}.contact_email ;;
  }

  dimension: contact_name_first {
    type: string
    sql: ${TABLE}.contact_name_first ;;
  }

  dimension: contact_name_full {
    type: string
    sql: ${TABLE}.contact_name_full ;;
  }

  dimension: contact_name_last {
    type: string
    sql: ${TABLE}.contact_name_last ;;
  }

  dimension: contact_name_middle {
    type: string
    sql: ${TABLE}.contact_name_middle ;;
  }

  dimension: contact_phone_number {
    type: string
    sql: ${TABLE}.contact_phone_number ;;
  }

  dimension: contact_phone_sms {
    type: string
    sql: ${TABLE}.contact_phone_sms ;;
  }

  dimension: contact_phone_verified {
    type: yesno
    sql: ${TABLE}.contact_phone_verified ;;
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

  dimension: event_flags_has_seen_automated_pricing_tour {
    type: yesno
    sql: ${TABLE}.event_flags_has_seen_automated_pricing_tour ;;
  }

  dimension: event_flags_has_seen_new_pricing_tour {
    type: yesno
    sql: ${TABLE}.event_flags_has_seen_new_pricing_tour ;;
  }

  dimension_group: event_flags_visited_new_pricing {
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
    sql: ${TABLE}.event_flags_visited_new_pricing_at ;;
  }

  dimension: facebook_birthday {
    type: string
    sql: ${TABLE}.facebook_birthday ;;
  }

  dimension: facebook_gender {
    type: string
    sql: ${TABLE}.facebook_gender ;;
  }

  dimension: facebook_id {
    type: string
    sql: ${TABLE}.facebook_id ;;
  }

  dimension: facebook_name_first {
    type: string
    sql: ${TABLE}.facebook_name_first ;;
  }

  dimension: facebook_name_full {
    type: string
    sql: ${TABLE}.facebook_name_full ;;
  }

  dimension: facebook_name_last {
    type: string
    sql: ${TABLE}.facebook_name_last ;;
  }

  dimension: facebook_username {
    type: string
    sql: ${TABLE}.facebook_username ;;
  }

  dimension: geom {
    type: string
    sql: ${TABLE}.geom ;;
  }

  dimension: geom_webmercator {
    type: string
    sql: ${TABLE}.geom_webmercator ;;
  }

  dimension: groups {
    type: string
    sql: ${TABLE}.groups ;;
  }

  dimension: integrity {
    type: string
    sql: ${TABLE}.integrity ;;
  }

  dimension_group: license_birthday {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.license_birthday ;;
  }

  dimension: license_country {
    type: string
    sql: ${TABLE}.license_country ;;
  }

  dimension_group: license_expiry {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.license_expiry ;;
  }

  dimension: license_id {
    type: string
    sql: ${TABLE}.license_id ;;
  }

  dimension: license_name_first {
    type: string
    sql: ${TABLE}.license_name_first ;;
  }

  dimension: license_name_last {
    type: string
    sql: ${TABLE}.license_name_last ;;
  }

  dimension: license_name_middle {
    type: string
    sql: ${TABLE}.license_name_middle ;;
  }

  dimension: license_state {
    type: string
    sql: ${TABLE}.license_state ;;
  }

  dimension: license_status {
    type: string
    sql: ${TABLE}.license_status ;;
  }

  dimension: marketing_autofill_promo_code {
    type: string
    sql: ${TABLE}.marketing_autofill_promo_code ;;
  }

  dimension: marketing_landing {
    type: string
    sql: ${TABLE}.marketing_landing ;;
  }

  dimension: marketing_owner {
    type: yesno
    sql: ${TABLE}.marketing_owner ;;
  }

  dimension: marketing_portland {
    type: string
    sql: ${TABLE}.marketing_portland ;;
  }

  dimension: marketing_referring_user_id {
    type: string
    sql: ${TABLE}.marketing_referring_user_id ;;
  }

  dimension: marketing_source {
    type: string
    sql: ${TABLE}.marketing_source ;;
  }

  dimension: marketing_source_code {
    type: string
    sql: ${TABLE}.marketing_source_code ;;
  }

  dimension: marketing_source_other {
    type: string
    sql: ${TABLE}.marketing_source_other ;;
  }

  dimension: marketing_source_referrer {
    type: string
    sql: ${TABLE}.marketing_source_referrer ;;
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

  dimension: other_payment_cards {
    type: string
    sql: ${TABLE}.other_payment_cards ;;
  }

  dimension: payment_debit_address_city {
    type: string
    sql: ${TABLE}.payment_debit_address_city ;;
  }

  dimension: payment_debit_address_postcode {
    type: string
    sql: ${TABLE}.payment_debit_address_postcode ;;
  }

  dimension: payment_debit_address_region {
    type: string
    sql: ${TABLE}.payment_debit_address_region ;;
  }

  dimension: payment_debit_address_street {
    type: string
    sql: ${TABLE}.payment_debit_address_street ;;
  }

  dimension: payment_debit_email {
    type: string
    sql: ${TABLE}.payment_debit_email ;;
  }

  dimension: payment_debit_method {
    type: string
    sql: ${TABLE}.payment_debit_method ;;
  }

  dimension: payment_debit_name {
    type: string
    sql: ${TABLE}.payment_debit_name ;;
  }

  dimension: primary_credit_account_hash {
    type: string
    sql: ${TABLE}.primary_credit_account_hash ;;
  }

  dimension: primary_credit_account_id {
    type: string
    sql: ${TABLE}.primary_credit_account_id ;;
  }

  dimension: primary_credit_account_type {
    type: string
    sql: ${TABLE}.primary_credit_account_type ;;
  }

  dimension: primary_credit_balance {
    type: number
    sql: ${TABLE}.primary_credit_balance ;;
  }

  dimension: primary_credit_total_money_earned {
    type: number
    sql: ${TABLE}.primary_credit_total_money_earned ;;
  }

  dimension: primary_debit_account_hash {
    type: string
    sql: ${TABLE}.primary_debit_account_hash ;;
  }

  dimension: primary_debit_account_id {
    type: string
    sql: ${TABLE}.primary_debit_account_id ;;
  }

  dimension: primary_debit_account_type {
    type: string
    sql: ${TABLE}.primary_debit_account_type ;;
  }

  dimension: primary_debit_balance {
    type: number
    sql: ${TABLE}.primary_debit_balance ;;
  }

  dimension: primary_debit_total_money_earned {
    type: number
    sql: ${TABLE}.primary_debit_total_money_earned ;;
  }

  dimension: profile_gender {
    type: string
    sql: ${TABLE}.profile_gender ;;
  }

  dimension: profile_languages {
    type: string
    sql: ${TABLE}.profile_languages ;;
  }

  dimension: profile_photo {
    type: string
    sql: ${TABLE}.profile_photo ;;
  }

  dimension: profile_username {
    type: string
    sql: ${TABLE}.profile_username ;;
  }

  dimension: secondary_debit_account_hash {
    type: string
    sql: ${TABLE}.secondary_debit_account_hash ;;
  }

  dimension: secondary_debit_account_id {
    type: string
    sql: ${TABLE}.secondary_debit_account_id ;;
  }

  dimension: secondary_debit_account_type {
    type: string
    sql: ${TABLE}.secondary_debit_account_type ;;
  }

  dimension: secondary_debit_balance {
    type: number
    sql: ${TABLE}.secondary_debit_balance ;;
  }

  dimension: secondary_debit_total_money_earned {
    type: number
    sql: ${TABLE}.secondary_debit_total_money_earned ;;
  }

  dimension: settings_manual {
    type: string
    sql: ${TABLE}.settings_manual ;;
  }

  dimension: settings_search_location_latitude {
    type: number
    sql: ${TABLE}.settings_search_location_latitude ;;
  }

  dimension: settings_search_location_longitude {
    type: number
    sql: ${TABLE}.settings_search_location_longitude ;;
  }

  dimension: settings_search_postcode {
    type: string
    sql: ${TABLE}.settings_search_postcode ;;
  }

  dimension: settings_search_street {
    type: string
    sql: ${TABLE}.settings_search_street ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: suspended_state_reason {
    type: string
    sql: ${TABLE}.suspended_state_reason ;;
  }

  dimension: tracking_app_server {
    type: string
    sql: ${TABLE}.tracking_app_server ;;
  }

  dimension: tracking_user_agent {
    type: string
    sql: ${TABLE}.tracking_user_agent ;;
  }

  dimension: uber_driver_id {
    type: string
    sql: ${TABLE}.uber_driver_id ;;
  }

  dimension_group: uber_driver_linked {
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
    sql: ${TABLE}.uber_driver_linked_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, facebook_username, payment_debit_name, profile_username]
  }
}
