# The name of this view in Looker is "Dataloop Metrics Daily2"
view: dataloop_metrics_daily2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `pendo_data.dataloopMetricsDaily2`
    ;;
  drill_fields: [account]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: account {
    primary_key: yes
    type: string
    sql: ${TABLE}.account ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account Name" in Explore.

  dimension: account_name {
    type: string
    sql: ${TABLE}.accountName ;;
  }

  dimension: annotations {
    type: string
    sql: ${TABLE}.annotations ;;
  }

  dimension: api_calls_other_sum {
    type: string
    sql: ${TABLE}.apiCallsOtherSum ;;
  }

  dimension: api_calls_sdk_sum {
    type: string
    sql: ${TABLE}.apiCallsSdkSum ;;
  }

  dimension: api_calls_sum {
    type: string
    sql: ${TABLE}.apiCallsSum ;;
  }

  dimension: api_calls_system_sum {
    type: string
    sql: ${TABLE}.apiCallsSystemSum ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: faas_usage_global_services {
    type: string
    sql: ${TABLE}.faasUsageGlobalServices ;;
  }

  dimension: faas_usage_services {
    type: string
    sql: ${TABLE}.faasUsageServices ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: items_total {
    type: string
    sql: ${TABLE}.itemsTotal ;;
  }

  dimension: items_total_annotated {
    type: string
    sql: ${TABLE}.itemsTotalAnnotated ;;
  }

  dimension: org {
    type: string
    sql: ${TABLE}.org ;;
  }

  dimension: org_name {
    type: string
    sql: ${TABLE}.orgName ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.projectName ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: storage_total_persist {
    type: string
    sql: ${TABLE}.storageTotalPersist ;;
  }

  dimension: ui_hours_roles_engineer {
    type: string
    sql: ${TABLE}.uiHoursRolesEngineer ;;
  }

  dimension: ui_hours_roles_owner {
    type: string
    sql: ${TABLE}.uiHoursRolesOwner ;;
  }

  dimension: ui_hours_sum {
    type: string
    sql: ${TABLE}.uiHoursSum ;;
  }

  measure: count {
    type: count
    drill_fields: [account, org_name, account_name, project_name]
  }
}
