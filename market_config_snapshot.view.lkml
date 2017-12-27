view: market_config_snapshot {
  sql_table_name: public.market_config_snapshot ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: change_type {
    type: string
    sql: ${TABLE}.change_type ;;
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: impacted_postcodes {
    type: string
    sql: ${TABLE}.impacted_postcodes ;;
  }

  dimension: market_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.market_id ;;
  }

  dimension: market_region {
    type: string
    sql: ${TABLE}.market_region ;;
  }

  dimension: market_snapshot_abbreviation {
    type: string
    sql: ${TABLE}.market_snapshot_abbreviation ;;
  }

  dimension: market_snapshot_country {
    type: string
    sql: ${TABLE}.market_snapshot_country ;;
  }

  dimension_group: market_snapshot_created {
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
    sql: ${TABLE}.market_snapshot_created_at ;;
  }

  dimension: market_snapshot_description {
    type: string
    sql: ${TABLE}.market_snapshot_description ;;
  }

  dimension: market_snapshot_id {
    type: number
    sql: ${TABLE}.market_snapshot_id ;;
  }

  dimension_group: market_snapshot_modified {
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
    sql: ${TABLE}.market_snapshot_modified_at ;;
  }

  dimension: market_snapshot_name {
    type: string
    sql: ${TABLE}.market_snapshot_name ;;
  }

  dimension: market_snapshot_region {
    type: string
    sql: ${TABLE}.market_snapshot_region ;;
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
    sql: ${TABLE}.modified_at ;;
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

  dimension: pushed {
    type: yesno
    sql: ${TABLE}.pushed ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: zone_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.zone_id ;;
  }

  dimension: zone_snapshots {
    type: string
    sql: ${TABLE}.zone_snapshots ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      market_snapshot_name,
      market.id,
      market.name,
      zone.name,
      zone.id
    ]
  }
}
