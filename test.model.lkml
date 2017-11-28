connection: "faa"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: accidents {}

explore: aircraft {
  join: aircraft_types {
    type: left_outer
    sql_on: ${aircraft.aircraft_type_id} = ${aircraft_types.aircraft_type_id} ;;
    relationship: many_to_one
  }

  join: aircraft_engine_types {
    type: left_outer
    sql_on: ${aircraft.aircraft_engine_type_id} = ${aircraft_engine_types.aircraft_engine_type_id} ;;
    relationship: many_to_one
  }
}

explore: aircraft_engine_types {}

explore: aircraft_engines {
  join: aircraft_engine_types {
    type: left_outer
    sql_on: ${aircraft_engines.aircraft_engine_type_id} = ${aircraft_engine_types.aircraft_engine_type_id} ;;
    relationship: many_to_one
  }
}

explore: aircraft_models {
  join: aircraft_types {
    type: left_outer
    sql_on: ${aircraft_models.aircraft_type_id} = ${aircraft_types.aircraft_type_id} ;;
    relationship: many_to_one
  }

  join: aircraft_engine_types {
    type: left_outer
    sql_on: ${aircraft_models.aircraft_engine_type_id} = ${aircraft_engine_types.aircraft_engine_type_id} ;;
    relationship: many_to_one
  }
}

explore: aircraft_types {}

explore: airport_remarks {}

explore: airports {}

explore: carriers {}

explore: exceptions {}

explore: ontime {}

explore: states {}

explore: zipcodes {}
