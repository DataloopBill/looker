view: dataloop_metrics_daily {
  label: "Dataloop Daily Metrics"
  sql_table_name: pendo_data.dataloopMetricsDaily ;;

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: account_name {
    label: "Account Name"
    type: string
    sql: ${TABLE}.accountName ;;
  }

  dimension: project {
    label: "Project ID"
    type: string
    sql: ${TABLE}.project ;;
  }

  dimension: project_name {
    label: "Project Name"
    type: string
    sql: ${TABLE}.projectName ;;
  }

  dimension: annotations {
    label: "Annotations String"
    type: string
    hidden: yes
    sql: ${TABLE}.annotations ;;
  }

  dimension: string_to_num_annotations {
    label: "Annotations"
    type: number
    sql: CAST(${TABLE}.annotations as INTEGER);;
  }

  dimension: org {
    label: "Organization ID"
    type: string
    sql: ${TABLE}.org ;;
  }

  dimension: org_name {
    label: "Organization Name"
    type: string
    sql: ${TABLE}.orgName ;;
  }

  dimension: api_calls_sum {
    label: "Sum of API Calls String"
    type: string
    hidden: yes
    sql: ${TABLE}.apiCallsSum ;;
  }

  dimension: string_to_num_api_calls_sum {
    label: "Sum of API Calls"
    type: number
    sql: CAST(${TABLE}.apiCallsSum as INTEGER);;
  }

  dimension: ui_hours_sum {
    label: "Sum of UI Hours String"
    type: string
    hidden: yes
    sql: ${TABLE}.uiHoursSum ;;
  }

  dimension: string_to_num_ui_hours_sum {
    label: "Sum of UI Hours"
    type: number
    sql: CAST(${TABLE}.uiHoursSum as INTEGER);;
  }

  dimension: ui_hours_roles_engineer {
    label: "UI Hours by Engineer Role String"
    type: string
    hidden: yes
    sql: ${TABLE}.uiHoursRolesEngineer ;;
  }

  dimension: string_to_num_ui_hours_roles_engineer {
    label: "UI Hours by Engineer Role"
    type: number
    sql: CAST(${TABLE}.uiHoursRolesEngineer as INTEGER);;
  }

  dimension: ui_hours_roles_owner {
    label: "UI Hours by Owner Role String"
    type: string
    hidden: yes
    sql: ${TABLE}.uiHoursRolesOwner ;;
  }

  dimension: string_to_num_ui_hours_roles_owner {
    label: "UI Hours by Owner Role"
    type: number
    sql: CAST(${TABLE}.uiHoursRolesOwner as INTEGER);;
  }

  dimension: api_calls_sdk_sum {
    label: "Sum of SDK API Calls String"
    type: string
    hidden: yes
    sql: ${TABLE}.apiCallsSdkSum ;;
  }

  dimension: string_to_num_api_calls_sdk_sum {
    label: "Sum of SDK API Calls"
    type: number
    sql: CAST(${TABLE}.apiCallsSdkSum as INTEGER);;
  }

  dimension: api_calls_system_sum {
    label: "Sum of System API Calls String"
    type: string
    hidden: yes
    sql: ${TABLE}.apiCallsSystemSum ;;
  }

  dimension: string_to_num_api_calls_system_sum {
    label: "Sum of System API Calls"
    type: number
    sql: CAST(${TABLE}.apiCallsSystemSum as INTEGER);;
  }

  dimension: api_calls_other_sum {
    label: "Sum of Other API Calls String"
    type: string
    hidden: yes
    sql: ${TABLE}.apiCallsOtherSum ;;
  }

  dimension: string_to_num_api_calls_other_sum {
    label: "Sum of Other API Calls"
    type: number
    sql: CAST(${TABLE}.apiCallsOtherSum as INTEGER);;
  }

  dimension: items_total {
    label: "Total Items String"
    type: string
    hidden: yes
    sql: ${TABLE}.itemsTotal ;;
  }

  dimension: string_to_num_items_total {
    label: "Total Items"
    type: number
    sql: CAST(${TABLE}.itemsTotal as INTEGER);;
  }

  dimension: items_total_annotated {
    label: "Total Items Annotated String"
    type: string
    hidden: yes
    sql: ${TABLE}.itemsTotalAnnotated ;;
  }

  dimension: string_to_num_items_total_annotated {
    label: "Total Items Annotated"
    type: number
    sql: CAST(${TABLE}.itemsTotalAnnotated as INTEGER);;
  }

  dimension: faas_usage_services {
    label: "Services FaaS Usage String"
    type: string
    hidden: yes
    sql: ${TABLE}.faasUsageServices ;;
  }

  dimension: string_to_num_faas_usage_services {
    label: "Services FaaS Usage"
    type: number
    sql: CAST(${TABLE}.faasUsageServices as INTEGER);;
  }

  dimension: faas_usage_global_services {
    label: "Global Services FaaS Usage String"
    type: string
    hidden: yes
    sql: ${TABLE}.faasUsageGlobalServices ;;
  }

  dimension: string_to_num_faas_usage_global_services {
    label: "Global Services FaaS Usage"
    type: number
    sql: CAST(${TABLE}.faasUsageGlobalServices as INTEGER);;
  }

  dimension: storage_total_persist {
    label: "Total Persistent Storage String"
    type: string
    hidden: yes
    sql: ${TABLE}.storageTotalPersist ;;
  }

  dimension: string_to_num_storage_total_persist {
    label: "Total Persistent Storage"
    type: number
    sql: CAST(${TABLE}.storageTotalPersist as INTEGER);;
  }

  dimension: yyyy_mm_dd {
    description: "Extracted Year-Month-Day"
    type: string
    hidden: yes
    sql: substr(${TABLE}.date,1,10);;
  }

  dimension: yyyy_mm_dd_as_timestamp {
    label: "Date to TimeStamp"
    type: string
    hidden: yes
    sql: cast(PARSE_DATETIME('%Y-%m-%d',${yyyy_mm_dd}) as timestamp);;
  }

  dimension_group: data_load_date {
    label: "Data Load Date"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year,
      day_of_week
    ]
    sql: ${yyyy_mm_dd_as_timestamp} ;;
  }

  measure: total_api_calls_sum {
    type: sum
    sql: ${string_to_num_api_calls_sum} ;;
  }

  measure: total_api_calls_other_sum {
    type: sum
    sql: ${string_to_num_api_calls_other_sum} ;;
  }

  measure: total_api_calls_system_sum {
    type: sum
    sql: ${string_to_num_api_calls_system_sum} ;;
  }

  measure: total_api_calls_sdk_sum {
    type: sum
    sql: ${string_to_num_api_calls_sdk_sum} ;;
  }

  measure: total_faas_usage_services {
    type: sum
    sql: ${string_to_num_faas_usage_services} ;;
  }

  measure: total_faas_usage_global_services {
    type: sum
    sql: ${string_to_num_faas_usage_global_services} ;;
  }

  measure: total_storage_total_persist {
    type: sum
    sql: ${string_to_num_storage_total_persist} ;;
  }

  measure: total_ui_hours_sum {
    type: sum
    sql: ${string_to_num_ui_hours_sum} ;;
  }

  measure: total_annotations {
    type: sum
    sql: ${string_to_num_annotations} ;;
  }

  measure: total_items_annotated {
    type: sum
    sql: ${string_to_num_items_total_annotated} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      account_id,
      account_name,
      string_to_num_storage_total_persist,
      string_to_num_faas_usage_global_services,
      string_to_num_faas_usage_services,
      string_to_num_items_total_annotated,
      string_to_num_items_total,
      string_to_num_api_calls_other_sum,
      string_to_num_api_calls_system_sum,
      string_to_num_api_calls_sdk_sum,
      string_to_num_ui_hours_sum,
      string_to_num_ui_hours_roles_owner,
      string_to_num_ui_hours_roles_engineer,
      string_to_num_api_calls_sum,
      string_to_num_annotations
    ]
  }
}
