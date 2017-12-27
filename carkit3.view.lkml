view: carkit3 {
  sql_table_name: public.carkit3 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: battery_voltage {
    type: number
    sql: ${TABLE}.battery_voltage ;;
  }

  dimension: car_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.car_id ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: exosense_device_auth_token {
    type: number
    sql: ${TABLE}.exosense_device_auth_token ;;
  }

  dimension: exosense_device_id {
    type: string
    sql: ${TABLE}.exosense_device_id ;;
  }

  dimension: exosense_server_auth_token {
    type: number
    sql: ${TABLE}.exosense_server_auth_token ;;
  }

  dimension: ignition_alerts {
    type: yesno
    sql: ${TABLE}.ignition_alerts ;;
  }

  dimension: imei_number {
    type: string
    sql: ${TABLE}.imei_number ;;
  }

  dimension: install_status {
    type: string
    sql: ${TABLE}.install_status ;;
  }

  dimension_group: keep_awake_until {
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
    sql: ${TABLE}.keep_awake_until ;;
  }

  dimension_group: last_contact {
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
    sql: ${TABLE}.last_contact ;;
  }

  dimension_group: last_waypoint_contact {
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
    sql: ${TABLE}.last_waypoint_contact ;;
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

  dimension: mtd_pointers {
    type: string
    sql: ${TABLE}.mtd_pointers ;;
  }

  dimension_group: online_since {
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
    sql: ${TABLE}.online_since ;;
  }

  dimension: power_saving_mode {
    type: string
    sql: ${TABLE}.power_saving_mode ;;
  }

  dimension: signal_strength {
    type: number
    sql: ${TABLE}.signal_strength ;;
  }

  dimension_group: suppress_battery_alerts_until {
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
    sql: ${TABLE}.suppress_battery_alerts_until ;;
  }

  dimension_group: suppress_offline_alerts_until {
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
    sql: ${TABLE}.suppress_offline_alerts_until ;;
  }

  dimension: uibox_versions {
    type: string
    sql: ${TABLE}.uibox_versions ;;
  }

  dimension: versions {
    type: string
    sql: ${TABLE}.versions ;;
  }

  measure: count {
    type: count
    drill_fields: [id, car.profile_carname, car.id]
  }
}
