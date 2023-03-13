view: assoldcapacity {
  label: "As Sold Capacity"
  sql_table_name: pendo_data.asSoldCapacity ;;

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: account_name {
    label: "Account Name"
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: api_calls {
    label: "API Calls Sold"
    type: string
    sql: ${TABLE}.apiCalls ;;
  }

  dimension: datapoint {
    label: "Datapoints Sold"
    type: string
    sql: ${TABLE}.datapoints ;;
  }

  dimension: ui_hours {
    label: "UI Hours Sold"
    type: string
    sql: ${TABLE}.uiHours ;;
  }

  dimension: compute {
    label: "Compute Sold"
    type: string
    sql: ${TABLE}.compute ;;
  }

  dimension: storage {
    label: "Storage Sold"
    type: string
    sql: ${TABLE}.storage ;;
  }

}
