view: events {
  derived_table: {
    sql:  select a.*,
                  min(day) over (partition by visitorId, accountId) as firstvisit_user,
                  max(day) over (partition by visitorId, accountId) as lastvisit_user,
                  min(day) over (partition by accountId) as firstvisit_account,
                  max(day) over (partition by accountId) as lastvisit_account,
                  sum(case when TO_DATE(day) >= DATE_ADD(day,-60,CURRENT_DATE()) then 1 else 0 end) over (partition by visitorId, accountId) as days_active_last60,
                  random() as pk
          from pendo_data.pendoEvents a ;;
  }

  dimension: pk {
    hidden: yes
    type: string
    sql: ${TABLE}.pk ;;
    primary_key: yes
  }

  dimension: accountid {
    label: "Subscription Name"
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension_group: day {
    label: "Event"
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
    sql: ${TABLE}.day ;;
  }

  measure: numevents {
    label: "Number of Events"
    type: sum
    sql: ${TABLE}.numEvents ;;
    value_format_name: decimal_0
  }

  dimension: numminutes {
    hidden: yes
    type: number
    sql: ${TABLE}.numMinutes ;;
  }

  measure: number_of_minutes {
    label: "Number of Minutes"
    type: sum
    sql: ${numminutes} ;;
    value_format_name: decimal_0
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: visitorid {
    label: "Visitor ID"
    type: string
    sql: ${TABLE}.visitorId ;;
  }

  dimension: days_active_last60 {
    label: "Days Active Out of Last 60 Days"
    type: number
    sql: ${TABLE}.days_active_last60 ;;
  }

  dimension_group: firstvisit_user {
    label: "First Visit - User"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.firstvisit_user ;;
  }

  dimension_group: lastvisit_user {
    label: "Last Visit - User"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.lastvisit_user ;;
  }

  dimension_group: firstvisit_account {
    label: "First Visit - Account"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.firstvisit_account ;;
  }

  dimension_group: lastvisit_account {
    label: "Last Visit - Account"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      fiscal_quarter,
      fiscal_year
    ]
    sql: ${TABLE}.lastvisit_account ;;
  }

  measure: active_user {
    label: "Active User"
    type: count_distinct
    sql: CONCAT(${visitorid},${accountid}) ;;
    value_format_name: decimal_0
  }

  measure: new_mau {
    label: "New MAU"
    type: count_distinct
    sql: case when ${firstvisit_user_month}=${day_month} then CONCAT(${visitorid},${accountid}) else null end ;;
  }

  measure: churned_mau {
    label: "Churned MAU"
    type: count_distinct
    sql: case when ${lastvisit_user_month}=${day_month} then CONCAT(${visitorid},${accountid}) else null end ;;
  }

  measure: active_account {
    label: "Active Account"
    type: count_distinct
    sql: ${accountid} ;;
    value_format_name: decimal_0
  }
}

view: pendo_events {
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
}

# view: pendo_events {
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
