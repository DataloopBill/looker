# The name of this view in Looker is "Pendo Feature Events"
view: pendo_feature_events {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `pendo_data.pendoFeatureEvents`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account ID" in Explore.

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: app_id {
    type: number
    sql: ${TABLE}.appId ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: day {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.day ;;
  }

  dimension: feature_id {
    type: string
    sql: ${TABLE}.featureId ;;
  }

  dimension: num_events {
    type: number
    sql: ${TABLE}.numEvents ;;
  }

  dimension: num_minutes {
    type: number
    sql: ${TABLE}.numMinutes ;;
  }

  dimension: remote_ip {
    type: string
    sql: ${TABLE}.remoteIp ;;
  }

  dimension: server {
    type: string
    sql: ${TABLE}.server ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.userAgent ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitorId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
