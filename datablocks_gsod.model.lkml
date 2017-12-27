connection: "getdata"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: datablocks_gsod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: datablocks_gsod_default_datagroup

# - explore: account

# - explore: car

# - explore: car_autotoll_status_snapshot
#   joins:
#     - join: car
#       type: left_outer
#       sql_on: ${car_autotoll_status_snapshot.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: car_parking_snapshot
#   joins:
#     - join: car
#       type: left_outer
#       sql_on: ${car_parking_snapshot.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: car_status_snapshot
#   joins:
#     - join: car
#       type: left_outer
#       sql_on: ${car_status_snapshot.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: cardb

# - explore: cardb_legacy

# - explore: carkit3
#   joins:
#     - join: car
#       type: left_outer
#       sql_on: ${carkit3.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: deprecated_rental
#   joins:
#     - join: car
#       type: left_outer
#       sql_on: ${deprecated_rental.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: fraud_profile
#   joins:
#     - join: trip
#       type: left_outer
#       sql_on: ${fraud_profile.trip_id} = ${trip.id}
#       relationship: many_to_one

#     - join: car
#       type: left_outer
#       sql_on: ${trip.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: geography_columns

# - explore: geometry_columns

# - explore: inspection
#   joins:
#     - join: car
#       type: left_outer
#       sql_on: ${inspection.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: inspection_comment
#   joins:
#     - join: inspection
#       type: left_outer
#       sql_on: ${inspection_comment.inspection_id} = ${inspection.id}
#       relationship: many_to_one

#     - join: car
#       type: left_outer
#       sql_on: ${inspection.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: inspection_photo
#   joins:
#     - join: inspection
#       type: left_outer
#       sql_on: ${inspection_photo.inspection_id} = ${inspection.id}
#       relationship: many_to_one

#     - join: car
#       type: left_outer
#       sql_on: ${inspection.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: market

# - explore: market_config_snapshot
#   joins:
#     - join: market
#       type: left_outer
#       sql_on: ${market_config_snapshot.market_id} = ${market.id}
#       relationship: many_to_one

#     - join: zone
#       type: left_outer
#       sql_on: ${market_config_snapshot.zone_id} = ${zone.id}
#       relationship: many_to_one


# - explore: market_dimensions
#   joins:
#     - join: market
#       type: left_outer
#       sql_on: ${market_dimensions.market_id} = ${market.id}
#       relationship: many_to_one

#     - join: zone
#       type: left_outer
#       sql_on: ${market_dimensions.zone_id} = ${zone.id}
#       relationship: many_to_one


# - explore: owner_feedback

# - explore: pg_stat_statements

# - explore: price_change
#   joins:
#     - join: car
#       type: left_outer
#       sql_on: ${price_change.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: raster_columns

# - explore: raster_overviews

# - explore: receipt_item
#   joins:
#     - join: trip
#       type: left_outer
#       sql_on: ${receipt_item.trip_id} = ${trip.id}
#       relationship: many_to_one

#     - join: car
#       type: left_outer
#       sql_on: ${trip.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: renter_feedback
#   joins:
#     - join: car
#       type: left_outer
#       sql_on: ${renter_feedback.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: spatial_ref_sys

# - explore: trip
#   joins:
#     - join: car
#       type: left_outer
#       sql_on: ${trip.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: trip_extension_item
#   joins:
#     - join: trip
#       type: left_outer
#       sql_on: ${trip_extension_item.trip_id} = ${trip.id}
#       relationship: many_to_one

#     - join: car
#       type: left_outer
#       sql_on: ${trip.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: trip_mileage
#   joins:
#     - join: trip
#       type: left_outer
#       sql_on: ${trip_mileage.trip_id} = ${trip.id}
#       relationship: many_to_one

#     - join: car
#       type: left_outer
#       sql_on: ${trip.car_id} = ${car.id}
#       relationship: many_to_one


# - explore: user_education_history

# - explore: user_work_history

# - explore: zone
#   joins:
#     - join: market
#       type: left_outer
#       sql_on: ${zone.market_id} = ${market.id}
#       relationship: many_to_one


# - explore: zone_commission_discount_change
