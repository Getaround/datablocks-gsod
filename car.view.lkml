view: car {
  sql_table_name: public.car ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: agent_notes {
    type: string
    sql: ${TABLE}.agent_notes ;;
  }

  dimension: ats_enabled {
    type: yesno
    sql: ${TABLE}.ats_enabled ;;
  }

  dimension: autotoll_enabled {
    type: yesno
    sql: ${TABLE}.autotoll_enabled ;;
  }

  dimension_group: autotoll_last_transitioned {
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
    sql: ${TABLE}.autotoll_last_transitioned_at ;;
  }

  dimension_group: autotoll_last_updated {
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
    sql: ${TABLE}.autotoll_last_updated_at ;;
  }

  dimension: autotoll_registration_error {
    type: string
    sql: ${TABLE}.autotoll_registration_error ;;
  }

  dimension: autotoll_status {
    type: string
    sql: ${TABLE}.autotoll_status ;;
  }

  dimension: carkit_asset_iccid {
    type: string
    sql: ${TABLE}.carkit_asset_iccid ;;
  }

  dimension: carkit_asset_id {
    type: string
    sql: ${TABLE}.carkit_asset_id ;;
  }

  dimension: carkit_asset_imei {
    type: string
    sql: ${TABLE}.carkit_asset_imei ;;
  }

  dimension: carkit_asset_phone {
    type: string
    sql: ${TABLE}.carkit_asset_phone ;;
  }

  dimension: carkit_channel {
    type: string
    sql: ${TABLE}.carkit_channel ;;
  }

  dimension_group: carkit_installed {
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
    sql: ${TABLE}.carkit_installed ;;
  }

  dimension: carkit_location_latitude {
    type: number
    sql: ${TABLE}.carkit_location_latitude ;;
  }

  dimension: carkit_location_longitude {
    type: number
    sql: ${TABLE}.carkit_location_longitude ;;
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

  dimension_group: delisted {
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
    sql: ${TABLE}.delisted_at ;;
  }

  dimension: duration_factor_algorithm {
    type: string
    sql: ${TABLE}.duration_factor_algorithm ;;
  }

  dimension_group: first_instant {
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
    sql: ${TABLE}.first_instant_at ;;
  }

  dimension_group: first_launched {
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
    sql: ${TABLE}.first_launched_at ;;
  }

  dimension_group: first_listed {
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
    sql: ${TABLE}.first_listed_at ;;
  }

  dimension_group: first_onboarded {
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
    sql: ${TABLE}.first_onboarded_at ;;
  }

  dimension_group: first_scheduled {
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
    sql: ${TABLE}.first_scheduled_at ;;
  }

  dimension: flags_autoid {
    type: string
    sql: ${TABLE}.flags_autoid ;;
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

  dimension_group: insurance_expiry {
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
    sql: ${TABLE}.insurance_expiry ;;
  }

  dimension: insurance_policy {
    type: string
    sql: ${TABLE}.insurance_policy ;;
  }

  dimension: is_uber_car {
    type: yesno
    sql: ${TABLE}.is_uber_car ;;
  }

  dimension_group: last_limited {
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
    sql: ${TABLE}.last_limited_at ;;
  }

  dimension_group: last_listed {
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
    sql: ${TABLE}.last_listed_at ;;
  }

  dimension_group: last_rescuing_started {
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
    sql: ${TABLE}.last_rescuing_started_at ;;
  }

  dimension: local_connectivity_channel {
    type: string
    sql: ${TABLE}.local_connectivity_channel ;;
  }

  dimension: lockbox_code {
    type: string
    sql: ${TABLE}.lockbox_code ;;
  }

  dimension_group: lost {
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
    sql: ${TABLE}.lost_at ;;
  }

  dimension: marketing_source {
    type: string
    sql: ${TABLE}.marketing_source ;;
  }

  dimension: marketing_source_other {
    type: string
    sql: ${TABLE}.marketing_source_other ;;
  }

  dimension: marketing_weekly_trips {
    type: string
    sql: ${TABLE}.marketing_weekly_trips ;;
  }

  dimension: mode {
    type: string
    sql: ${TABLE}.mode ;;
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

  dimension_group: offboarded {
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
    sql: ${TABLE}.offboarded_at ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: parking_address1_access {
    type: string
    sql: ${TABLE}.parking_address1_access ;;
  }

  dimension: parking_address1_access_hours {
    type: string
    sql: ${TABLE}.parking_address1_access_hours ;;
  }

  dimension: parking_address1_city {
    type: string
    sql: ${TABLE}.parking_address1_city ;;
  }

  dimension: parking_address1_location_latitude {
    type: number
    sql: ${TABLE}.parking_address1_location_latitude ;;
  }

  dimension: parking_address1_location_longitude {
    type: number
    sql: ${TABLE}.parking_address1_location_longitude ;;
  }

  dimension: parking_address1_location_type {
    type: string
    sql: ${TABLE}.parking_address1_location_type ;;
  }

  dimension: parking_address1_mode {
    type: string
    sql: ${TABLE}.parking_address1_mode ;;
  }

  dimension: parking_address1_postcode {
    type: string
    sql: ${TABLE}.parking_address1_postcode ;;
  }

  dimension: parking_address1_region {
    type: string
    sql: ${TABLE}.parking_address1_region ;;
  }

  dimension: parking_address1_street {
    type: string
    sql: ${TABLE}.parking_address1_street ;;
  }

  dimension: parking_address1_timezone {
    type: string
    sql: ${TABLE}.parking_address1_timezone ;;
  }

  dimension: price_daily {
    type: number
    sql: ${TABLE}.price_daily ;;
  }

  dimension: price_daily_weekly_ratio {
    type: number
    sql: ${TABLE}.price_daily_weekly_ratio ;;
  }

  dimension: price_hourly {
    type: number
    sql: ${TABLE}.price_hourly ;;
  }

  dimension: price_hourly_daily_ratio {
    type: number
    sql: ${TABLE}.price_hourly_daily_ratio ;;
  }

  dimension: price_weekly {
    type: number
    sql: ${TABLE}.price_weekly ;;
  }

  dimension: pricing_algorithm {
    type: string
    sql: ${TABLE}.pricing_algorithm ;;
  }

  dimension: pricing_user_factor {
    type: number
    sql: ${TABLE}.pricing_user_factor ;;
  }

  dimension: profile_carname {
    type: string
    sql: ${TABLE}.profile_carname ;;
  }

  dimension: profile_description_listing {
    type: string
    sql: ${TABLE}.profile_description_listing ;;
  }

  dimension: profile_description_pickup {
    type: string
    sql: ${TABLE}.profile_description_pickup ;;
  }

  dimension: profile_details_make {
    type: string
    sql: ${TABLE}.profile_details_make ;;
  }

  dimension: profile_details_mileage {
    type: string
    sql: ${TABLE}.profile_details_mileage ;;
  }

  dimension: profile_details_model {
    type: string
    sql: ${TABLE}.profile_details_model ;;
  }

  dimension: profile_details_style {
    type: string
    sql: ${TABLE}.profile_details_style ;;
  }

  dimension: profile_details_style_id {
    type: number
    sql: ${TABLE}.profile_details_style_id ;;
  }

  dimension: profile_details_trim {
    type: string
    sql: ${TABLE}.profile_details_trim ;;
  }

  dimension: profile_details_year {
    type: number
    sql: ${TABLE}.profile_details_year ;;
  }

  dimension: profile_features_duration_minimum {
    type: number
    sql: ${TABLE}.profile_features_duration_minimum ;;
  }

  dimension: profile_features_legacy_attributes {
    type: string
    sql: ${TABLE}.profile_features_legacy_attributes ;;
  }

  dimension: profile_photos {
    type: string
    sql: ${TABLE}.profile_photos ;;
  }

  dimension: profile_registration_plate {
    type: string
    sql: ${TABLE}.profile_registration_plate ;;
  }

  dimension: profile_registration_state {
    type: string
    sql: ${TABLE}.profile_registration_state ;;
  }

  dimension: profile_transmission {
    type: string
    sql: ${TABLE}.profile_transmission ;;
  }

  dimension: profile_vin {
    type: string
    sql: ${TABLE}.profile_vin ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_reason {
    type: string
    sql: ${TABLE}.status_reason ;;
  }

  dimension: status_zendesk_id {
    type: string
    sql: ${TABLE}.status_zendesk_id ;;
  }

  dimension: tracking_app_server {
    type: string
    sql: ${TABLE}.tracking_app_server ;;
  }

  dimension: tracking_user_agent {
    type: string
    sql: ${TABLE}.tracking_user_agent ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      profile_carname,
      car_autotoll_status_snapshot.count,
      carkit3.count,
      car_parking_snapshot.count,
      car_status_snapshot.count,
      deprecated_rental.count,
      inspection.count,
      price_change.count,
      renter_feedback.count,
      trip.count
    ]
  }
}
