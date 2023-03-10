view: dataloop_metrics_daily {
  label: "Dataloop Daily Metrics"
  sql_table_name: pendo_data.dataloopMetricsDaily ;;

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."account" ;;
  }

  dimension: account_name {
    label: "Account Name"
    type: string
    sql: ${TABLE}."accountName" ;;
  }

  dimension: project {
    label: "Project ID"
    type: string
    sql: ${TABLE}."project" ;;
  }

  dimension: project_name {
    label: "Project Name"
    type: string
    sql: ${TABLE}."projectName" ;;
  }

  dimension: annotations {
    label: "Annotations"
    type: string
    sql: ${TABLE}."annotations" ;;
  }

  dimension: org {
    label: "Organization ID"
    type: string
    sql: ${TABLE}."org" ;;
  }

  dimension: org_name {
    label: "Organization Name"
    type: string
    sql: ${TABLE}."orgName" ;;
  }

  dimension: api_calls_sum {
    label: "Sum of API Calls"
    type: number
    sql: ${TABLE}."apiCallsSum" ;;
  }

  dimension: ui_hours_sum {
    label: "Sum of UI Hours"
    type: string
    sql: ${TABLE}."uiHoursSum" ;;
  }

  dimension: ui_hours_roles_engineer {
    label: "UI Hours by Engineer Role"
    type: string
    sql: ${TABLE}."uiHoursRolesEngineer" ;;
  }

  dimension: ui_hours_roles_owner {
    label: "UI Hours by Owner Role"
    type: string
    sql: ${TABLE}."uiHoursRolesOwner" ;;
  }

  dimension: api_calls_sdk_sum {
    label: "Sum of SDK API Calls"
    type: string
    sql: ${TABLE}."apiCallsSdkSum" ;;
  }

  dimension: api_calls_system_sum {
    label: "Sum of System API Calls"
    type: string
    sql: ${TABLE}."apiCallsSystemSum" ;;
  }

  dimension: api_calls_other_sum {
    label: "Sum of Other API Calls"
    type: string
    sql: ${TABLE}."apiCallsOtherSum" ;;
  }

  dimension: items_total {
    label: "Total Items"
    type: string
    sql: ${TABLE}."itemsTotal" ;;
  }

  dimension: items_total_annotated {
    label: "Total Items Annotated"
    type: string
    sql: ${TABLE}."itemsTotalAnnotated" ;;
  }

  dimension: faas_usage_services {
    label: "Services FaaS Usage"
    type: string
    sql: ${TABLE}."faasUsageServices" ;;
  }

  dimension: faas_usage_global_services {
    label: "Global Services FaaS Usage"
    type: string
    sql: ${TABLE}."faasUsageGlobalServices" ;;
  }

  dimension: storage_total_persist {
    label: "Total Persistent Storage"
    type: string
    sql: ${TABLE}."storageTotalPersist" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }



  measure: total_api_calls_sum {
    type: sum
    sql: ${api_calls_sum} ;;
  }

}
