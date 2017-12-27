view: trip_mileage {
  sql_table_name: public.trip_mileage ;;

  dimension: distance_in_miles {
    type: number
    sql: ${TABLE}.distance_in_miles ;;
  }

  dimension: trip_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.trip_id ;;
  }

  measure: count {
    type: count
    drill_fields: [trip.car_profile_carname, trip.id]
  }
}
