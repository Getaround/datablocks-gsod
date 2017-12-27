view: raster_overviews {
  sql_table_name: public.raster_overviews ;;

  dimension: o_raster_column {
    type: string
    sql: ${TABLE}.o_raster_column ;;
  }

  dimension: o_table_catalog {
    type: string
    sql: ${TABLE}.o_table_catalog ;;
  }

  dimension: o_table_name {
    type: string
    sql: ${TABLE}.o_table_name ;;
  }

  dimension: o_table_schema {
    type: string
    sql: ${TABLE}.o_table_schema ;;
  }

  dimension: overview_factor {
    type: number
    sql: ${TABLE}.overview_factor ;;
  }

  dimension: r_raster_column {
    type: string
    sql: ${TABLE}.r_raster_column ;;
  }

  dimension: r_table_catalog {
    type: string
    sql: ${TABLE}.r_table_catalog ;;
  }

  dimension: r_table_name {
    type: string
    sql: ${TABLE}.r_table_name ;;
  }

  dimension: r_table_schema {
    type: string
    sql: ${TABLE}.r_table_schema ;;
  }

  measure: count {
    type: count
    drill_fields: [r_table_name, o_table_name]
  }
}
