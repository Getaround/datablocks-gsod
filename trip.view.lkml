view: trip {
  sql_table_name: public.trip ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: bundle_id {
    type: string
    sql: ${TABLE}.bundle_id ;;
  }

  dimension_group: canceled {
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
    sql: ${TABLE}.canceled_at ;;
  }

  dimension: canceled_by {
    type: string
    sql: ${TABLE}.canceled_by ;;
  }

  dimension: cancellation_reason {
    type: string
    sql: ${TABLE}.cancellation_reason ;;
  }

  dimension: car_agent_notes {
    type: string
    sql: ${TABLE}.car_agent_notes ;;
  }

  dimension: car_ats_enabled {
    type: yesno
    sql: ${TABLE}.car_ats_enabled ;;
  }

  dimension_group: car_autotoll_last_transitioned {
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
    sql: ${TABLE}.car_autotoll_last_transitioned_at ;;
  }

  dimension_group: car_autotoll_last_updated {
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
    sql: ${TABLE}.car_autotoll_last_updated_at ;;
  }

  dimension: car_autotoll_registration_error {
    type: string
    sql: ${TABLE}.car_autotoll_registration_error ;;
  }

  dimension: car_autotoll_status {
    type: string
    sql: ${TABLE}.car_autotoll_status ;;
  }

  dimension: car_carkit_asset_iccid {
    type: string
    sql: ${TABLE}.car_carkit_asset_iccid ;;
  }

  dimension: car_carkit_asset_id {
    type: string
    sql: ${TABLE}.car_carkit_asset_id ;;
  }

  dimension: car_carkit_asset_imei {
    type: string
    sql: ${TABLE}.car_carkit_asset_imei ;;
  }

  dimension: car_carkit_asset_phone {
    type: string
    sql: ${TABLE}.car_carkit_asset_phone ;;
  }

  dimension: car_carkit_channel {
    type: string
    sql: ${TABLE}.car_carkit_channel ;;
  }

  dimension_group: car_carkit_installed {
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
    sql: ${TABLE}.car_carkit_installed ;;
  }

  dimension: car_carkit_location_latitude {
    type: number
    sql: ${TABLE}.car_carkit_location_latitude ;;
  }

  dimension: car_carkit_location_longitude {
    type: number
    sql: ${TABLE}.car_carkit_location_longitude ;;
  }

  dimension_group: car_created {
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
    sql: ${TABLE}.car_created ;;
  }

  dimension_group: car_delisted {
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
    sql: ${TABLE}.car_delisted_at ;;
  }

  dimension: car_duration_factor_algorithm {
    type: string
    sql: ${TABLE}.car_duration_factor_algorithm ;;
  }

  dimension_group: car_first_instant {
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
    sql: ${TABLE}.car_first_instant_at ;;
  }

  dimension_group: car_first_launched {
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
    sql: ${TABLE}.car_first_launched_at ;;
  }

  dimension_group: car_first_listed {
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
    sql: ${TABLE}.car_first_listed_at ;;
  }

  dimension_group: car_first_onboarded {
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
    sql: ${TABLE}.car_first_onboarded_at ;;
  }

  dimension_group: car_first_scheduled {
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
    sql: ${TABLE}.car_first_scheduled_at ;;
  }

  dimension: car_flags_autoid {
    type: string
    sql: ${TABLE}.car_flags_autoid ;;
  }

  dimension: car_groups {
    type: string
    sql: ${TABLE}.car_groups ;;
  }

  dimension: car_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.car_id ;;
  }

  dimension_group: car_insurance_expiry {
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
    sql: ${TABLE}.car_insurance_expiry ;;
  }

  dimension: car_insurance_policy {
    type: string
    sql: ${TABLE}.car_insurance_policy ;;
  }

  dimension: car_is_uber_car {
    type: yesno
    sql: ${TABLE}.car_is_uber_car ;;
  }

  dimension_group: car_last_delisted {
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
    sql: ${TABLE}.car_last_delisted_at ;;
  }

  dimension_group: car_last_limited {
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
    sql: ${TABLE}.car_last_limited_at ;;
  }

  dimension_group: car_last_listed {
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
    sql: ${TABLE}.car_last_listed ;;
  }

  dimension_group: car_last_listed {
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
    sql: ${TABLE}.car_last_listed_at ;;
  }

  dimension_group: car_last_lost {
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
    sql: ${TABLE}.car_last_lost_at ;;
  }

  dimension_group: car_last_onboarded {
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
    sql: ${TABLE}.car_last_onboarded_at ;;
  }

  dimension_group: car_last_scheduled {
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
    sql: ${TABLE}.car_last_scheduled_at ;;
  }

  dimension: car_local_connectivity_channel {
    type: string
    sql: ${TABLE}.car_local_connectivity_channel ;;
  }

  dimension: car_lockbox_code {
    type: string
    sql: ${TABLE}.car_lockbox_code ;;
  }

  dimension_group: car_lost {
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
    sql: ${TABLE}.car_lost_at ;;
  }

  dimension: car_marketing_source {
    type: string
    sql: ${TABLE}.car_marketing_source ;;
  }

  dimension: car_marketing_source_other {
    type: string
    sql: ${TABLE}.car_marketing_source_other ;;
  }

  dimension: car_marketing_weekly_trips {
    type: string
    sql: ${TABLE}.car_marketing_weekly_trips ;;
  }

  dimension: car_mode {
    type: string
    sql: ${TABLE}.car_mode ;;
  }

  dimension_group: car_modified {
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
    sql: ${TABLE}.car_modified ;;
  }

  dimension_group: car_offboarded {
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
    sql: ${TABLE}.car_offboarded_at ;;
  }

  dimension: car_owner_id {
    type: string
    sql: ${TABLE}.car_owner_id ;;
  }

  dimension: car_parking_address1_access {
    type: string
    sql: ${TABLE}.car_parking_address1_access ;;
  }

  dimension: car_parking_address1_access_hours {
    type: string
    sql: ${TABLE}.car_parking_address1_access_hours ;;
  }

  dimension: car_parking_address1_city {
    type: string
    sql: ${TABLE}.car_parking_address1_city ;;
  }

  dimension: car_parking_address1_location_latitude {
    type: number
    sql: ${TABLE}.car_parking_address1_location_latitude ;;
  }

  dimension: car_parking_address1_location_longitude {
    type: number
    sql: ${TABLE}.car_parking_address1_location_longitude ;;
  }

  dimension: car_parking_address1_location_type {
    type: string
    sql: ${TABLE}.car_parking_address1_location_type ;;
  }

  dimension: car_parking_address1_mode {
    type: string
    sql: ${TABLE}.car_parking_address1_mode ;;
  }

  dimension: car_parking_address1_postcode {
    type: string
    sql: ${TABLE}.car_parking_address1_postcode ;;
  }

  dimension: car_parking_address1_region {
    type: string
    sql: ${TABLE}.car_parking_address1_region ;;
  }

  dimension: car_parking_address1_street {
    type: string
    sql: ${TABLE}.car_parking_address1_street ;;
  }

  dimension: car_parking_address1_timezone {
    type: string
    sql: ${TABLE}.car_parking_address1_timezone ;;
  }

  dimension: car_price_daily {
    type: number
    sql: ${TABLE}.car_price_daily ;;
  }

  dimension: car_price_daily_weekly_ratio {
    type: number
    sql: ${TABLE}.car_price_daily_weekly_ratio ;;
  }

  dimension: car_price_hourly {
    type: number
    sql: ${TABLE}.car_price_hourly ;;
  }

  dimension: car_price_hourly_daily_ratio {
    type: number
    sql: ${TABLE}.car_price_hourly_daily_ratio ;;
  }

  dimension: car_price_weekly {
    type: number
    sql: ${TABLE}.car_price_weekly ;;
  }

  dimension: car_pricing_algorithm {
    type: string
    sql: ${TABLE}.car_pricing_algorithm ;;
  }

  dimension: car_pricing_user_factor {
    type: number
    sql: ${TABLE}.car_pricing_user_factor ;;
  }

  dimension: car_profile_carname {
    type: string
    sql: ${TABLE}.car_profile_carname ;;
  }

  dimension: car_profile_description_listing {
    type: string
    sql: ${TABLE}.car_profile_description_listing ;;
  }

  dimension: car_profile_description_pickup {
    type: string
    sql: ${TABLE}.car_profile_description_pickup ;;
  }

  dimension: car_profile_details_make {
    type: string
    sql: ${TABLE}.car_profile_details_make ;;
  }

  dimension: car_profile_details_mileage {
    type: string
    sql: ${TABLE}.car_profile_details_mileage ;;
  }

  dimension: car_profile_details_model {
    type: string
    sql: ${TABLE}.car_profile_details_model ;;
  }

  dimension: car_profile_details_style {
    type: string
    sql: ${TABLE}.car_profile_details_style ;;
  }

  dimension: car_profile_details_style_id {
    type: number
    sql: ${TABLE}.car_profile_details_style_id ;;
  }

  dimension: car_profile_details_trim {
    type: string
    sql: ${TABLE}.car_profile_details_trim ;;
  }

  dimension: car_profile_details_year {
    type: number
    sql: ${TABLE}.car_profile_details_year ;;
  }

  dimension: car_profile_features_duration_minimum {
    type: number
    sql: ${TABLE}.car_profile_features_duration_minimum ;;
  }

  dimension: car_profile_features_legacy_attributes {
    type: string
    sql: ${TABLE}.car_profile_features_legacy_attributes ;;
  }

  dimension: car_profile_photos {
    type: string
    sql: ${TABLE}.car_profile_photos ;;
  }

  dimension: car_profile_registration_plate {
    type: string
    sql: ${TABLE}.car_profile_registration_plate ;;
  }

  dimension: car_profile_registration_state {
    type: string
    sql: ${TABLE}.car_profile_registration_state ;;
  }

  dimension: car_profile_transmission {
    type: string
    sql: ${TABLE}.car_profile_transmission ;;
  }

  dimension: car_profile_vin {
    type: string
    sql: ${TABLE}.car_profile_vin ;;
  }

  dimension: car_status {
    type: string
    sql: ${TABLE}.car_status ;;
  }

  dimension: car_status_zendesk_id {
    type: string
    sql: ${TABLE}.car_status_zendesk_id ;;
  }

  dimension: car_tracking_app_server {
    type: string
    sql: ${TABLE}.car_tracking_app_server ;;
  }

  dimension: car_tracking_user_agent {
    type: string
    sql: ${TABLE}.car_tracking_user_agent ;;
  }

  dimension: cat_autotoll_enabled {
    type: yesno
    sql: ${TABLE}.cat_autotoll_enabled ;;
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

  dimension_group: end {
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
    sql: ${TABLE}.end_time ;;
  }

  dimension: endorsement_insurable {
    type: yesno
    sql: ${TABLE}.endorsement_insurable ;;
  }

  dimension: endorsement_program {
    type: string
    sql: ${TABLE}.endorsement_program ;;
  }

  dimension: flags_autoq {
    type: yesno
    sql: ${TABLE}.flags_autoq ;;
  }

  dimension: geom {
    type: string
    sql: ${TABLE}.geom ;;
  }

  dimension: geom_webmercator {
    type: string
    sql: ${TABLE}.geom_webmercator ;;
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

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: receipt_discount_amount {
    type: number
    sql: ${TABLE}.receipt_discount_amount ;;
  }

  dimension: receipt_discount_code {
    type: string
    sql: ${TABLE}.receipt_discount_code ;;
  }

  dimension: receipt_extensions {
    type: string
    sql: ${TABLE}.receipt_extensions ;;
  }

  dimension: receipt_fees_booking {
    type: number
    sql: ${TABLE}.receipt_fees_booking ;;
  }

  dimension: receipt_fees_license {
    type: number
    sql: ${TABLE}.receipt_fees_license ;;
  }

  dimension: receipt_fees_young_driver_percent {
    type: number
    sql: ${TABLE}.receipt_fees_young_driver_percent ;;
  }

  dimension: receipt_fees_young_driver_percent_denominator {
    type: number
    sql: ${TABLE}.receipt_fees_young_driver_percent_denominator ;;
  }

  dimension: receipt_fees_young_driver_percent_numerator {
    type: number
    sql: ${TABLE}.receipt_fees_young_driver_percent_numerator ;;
  }

  dimension: receipt_fees_young_driver_total {
    type: number
    sql: ${TABLE}.receipt_fees_young_driver_total ;;
  }

  dimension: receipt_insurance_premium {
    type: number
    sql: ${TABLE}.receipt_insurance_premium ;;
  }

  dimension: receipt_owner_revshare_discount_percent {
    type: number
    sql: ${TABLE}.receipt_owner_revshare_discount_percent ;;
  }

  dimension: receipt_owner_revshare_discount_percent_denominator {
    type: number
    sql: ${TABLE}.receipt_owner_revshare_discount_percent_denominator ;;
  }

  dimension: receipt_owner_revshare_discount_percent_numerator {
    type: number
    sql: ${TABLE}.receipt_owner_revshare_discount_percent_numerator ;;
  }

  dimension: receipt_owner_revshare_discount_total {
    type: number
    sql: ${TABLE}.receipt_owner_revshare_discount_total ;;
  }

  dimension: receipt_owner_revshare_percent {
    type: number
    sql: ${TABLE}.receipt_owner_revshare_percent ;;
  }

  dimension: receipt_owner_revshare_percent_denominator {
    type: number
    sql: ${TABLE}.receipt_owner_revshare_percent_denominator ;;
  }

  dimension: receipt_owner_revshare_percent_numerator {
    type: number
    sql: ${TABLE}.receipt_owner_revshare_percent_numerator ;;
  }

  dimension: receipt_owner_revshare_total {
    type: number
    sql: ${TABLE}.receipt_owner_revshare_total ;;
  }

  dimension: receipt_price_rental {
    type: number
    sql: ${TABLE}.receipt_price_rental ;;
  }

  dimension: renter_id {
    type: string
    sql: ${TABLE}.renter_id ;;
  }

  dimension: response_note {
    type: string
    sql: ${TABLE}.response_note ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tracking_app_server {
    type: string
    sql: ${TABLE}.tracking_app_server ;;
  }

  dimension: tracking_car_app_server {
    type: string
    sql: ${TABLE}.tracking_car_app_server ;;
  }

  dimension: tracking_car_user_agent {
    type: string
    sql: ${TABLE}.tracking_car_user_agent ;;
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
      car_profile_carname,
      car.profile_carname,
      car.id,
      fraud_profile.count,
      receipt_item.count,
      trip_extension_item.count,
      trip_mileage.count
    ]
  }
}
