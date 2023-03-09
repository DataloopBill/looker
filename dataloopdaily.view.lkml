view: dataloopMetricsDaily {
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
      primary_key: yes
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
    type: string
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

  dimension_group: dataloaddate {
    label: "Data Load Date Grouping"
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

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_api_calls_sum {
    type: sum
    sql: ${api_calls_sum} ;;
  }

  measure: total_faas_usage_services {
    type: sum
    sql: ${faas_usage_services} ;;
  }
  measure: total_storage_total_persist {
    type: sum
    sql: ${storage_total_persist} ;;
  }

  measure: total_ui_hours_sum {
    type: sum
    sql: ${ui_hours_sum} ;;
  }

  measure: total_annotations {
    type: sum
    sql: ${annotations} ;;
  }

  measure: total_items_annotated {
    type: sum
    sql: ${items_total_annotated} ;;
  }

#  measure: count {
#    label: "Account Count"
#    type: count
#    drill_fields: [detail*]
#  }
  # ----- Sets of fields for drilling ------
#  set: detail {
#    fields: [
#      account_id,
#      account_name,
#      storage_total_persist,
#      faas_usage_global_services,
#      faas_usage_services,
#      items_total_annotated,
#      items_total,
#      api_calls_other_sum,
#      api_calls_system_sum,
#      api_calls_sdk_sum,
#      ui_hours_sum,
#      ui_hours_roles_owner,
#      ui_hours_roles_engineer,
#      api_calls_sum,
#      annotations
#    ]
#  }

}

# # You can specify the table name if it's different from the view name:
# sql_table_name: my_schema_name.tester ;;
#
# # Define your dimensions and measures here, like this:
# dimension: user_id {
#   description: "Unique ID for each user that has ordered"
#   type: number
#   sql: ${TABLE}.user_id ;;
# }
#
# dimension: lifetime_orders {
#   description: "The total number of orders for each user"
#   type: number
#   sql: ${TABLE}.lifetime_orders ;;
# }
#
# dimension_group: most_recent_purchase {
#   description: "The date when each user last ordered"
#   type: time
#   timeframes: [date, week, month, year]
#   sql: ${TABLE}.most_recent_purchase_at ;;
# }
#
# measure: total_lifetime_orders {
#   description: "Use this for counting lifetime orders across many users"
#   type: sum
#   sql: ${lifetime_orders} ;;
# }

# view: dataloopdaily {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
