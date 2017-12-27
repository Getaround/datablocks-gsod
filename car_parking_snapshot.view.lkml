view: car_parking_snapshot {
  sql_table_name: public.car_parking_snapshot ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: address_city {
    type: string
    sql: ${TABLE}.address_city ;;
  }

  dimension: address_country {
    type: string
    sql: ${TABLE}.address_country ;;
  }

  dimension: address_postcode {
    type: string
    sql: ${TABLE}.address_postcode ;;
  }

  dimension: address_region {
    type: string
    sql: ${TABLE}.address_region ;;
  }

  dimension: address_state {
    type: string
    sql: ${TABLE}.address_state ;;
  }

  dimension: address_street {
    type: string
    sql: ${TABLE}.address_street ;;
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

  dimension: location_latitude {
    type: number
    sql: ${TABLE}.location_latitude ;;
  }

  dimension: location_longitude {
    type: number
    sql: ${TABLE}.location_longitude ;;
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

  dimension: parking_access {
    type: string
    sql: ${TABLE}.parking_access ;;
  }

  dimension: parking_access_hours {
    type: string
    sql: ${TABLE}.parking_access_hours ;;
  }

  dimension: parking_location_type {
    type: string
    sql: ${TABLE}.parking_location_type ;;
  }

  dimension: parking_mode {
    type: string
    sql: ${TABLE}.parking_mode ;;
  }

  dimension_group: previously_changed {
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
    sql: ${TABLE}.previously_changed_at ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  measure: count {
    type: count
    drill_fields: [id, car.profile_carname, car.id]
  }
}
