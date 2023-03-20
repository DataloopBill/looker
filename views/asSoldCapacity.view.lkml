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
    label: "API Calls Sold String"
    type: string
    hidden: yes
    sql: ${TABLE}.apiCalls ;;
  }

  dimension: string_to_num_api_calls {
    label: "API Calls"
    type: number
    sql: CAST(${TABLE}.apiCalls as INTEGER);;
  }

  dimension: datapoints {
    label: "Datapoints Sold String"
    type: string
    hidden: yes
    sql: ${TABLE}.datapoints ;;
  }

  dimension: string_to_num_datapoints {
    label: "Datapoints Sold"
    type: number
    sql: CAST(${TABLE}.datapoints as INTEGER);;
  }

  dimension: ui_hours {
    label: "UI Hours Sold String"
    type: string
    hidden: yes
    sql: ${TABLE}.uiHours ;;
  }

  dimension: string_to_num_ui_hours {
    label: "UI Hours Sold"
    type: number
    sql: CAST(${TABLE}.uiHours as INTEGER);;
  }

  dimension: compute {
    label: "Compute Sold String"
    type: string
    hidden: yes
    sql: ${TABLE}.compute ;;
  }

  dimension: string_to_num_compute {
    label: "Compute Sold"
    type: number
    sql: CAST(${TABLE}.compute as INTEGER);;
  }

  dimension: storage {
    label: "Storage Sold String"
    type: string
    hidden: yes
    sql: ${TABLE}.storage ;;
  }

  dimension: string_to_num_storage {
    label: "Storage Sold"
    type: number
    sql: CAST(${TABLE}.storage as INTEGER);;
  }

  measure: total_api_calls_sold {
    type: number
    sql: ${string_to_num_api_calls} ;;
  }

  measure: total_datapoints_sold {
    type: number
    sql: ${string_to_num_datapoints} ;;
  }

  measure: total_ui_hours {
    type: number
    sql: ${string_to_num_ui_hours} ;;
  }

  measure: total_compute {
    type: number
    sql: ${string_to_num_compute} ;;
  }

  measure: total_storage {
    type: number
    sql: ${string_to_num_storage} ;;
  }

}
