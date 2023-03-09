# The name of this view in Looker is "Pendo Visitors"
view: pendo_visitors {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `pendo_data.pendoVisitors`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Account ID" in Explore.

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_Id ;;
  }

  dimension: accountid_custom {
    type: string
    sql: ${TABLE}.accountidCustom ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: firstvisit {
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
    sql: ${TABLE}.firstvisit ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}.fullname ;;
  }

  dimension: lastbrowsername {
    type: string
    sql: ${TABLE}.lastbrowsername ;;
  }

  dimension: lastbrowserversion {
    type: string
    sql: ${TABLE}.lastbrowserversion ;;
  }

  dimension: lastoperatingsystem {
    type: string
    sql: ${TABLE}.lastoperatingsystem ;;
  }

  dimension: lastservername {
    type: string
    sql: ${TABLE}.lastservername ;;
  }

  dimension_group: lastupdated {
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
    sql: ${TABLE}.lastupdated ;;
  }

  dimension: lastuseragent {
    type: string
    sql: ${TABLE}.lastuseragent ;;
  }

  dimension_group: lastvisit {
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
    sql: ${TABLE}.lastvisit ;;
  }

  dimension: orgid {
    type: string
    sql: ${TABLE}.orgid ;;
  }

  dimension: orgname {
    type: string
    sql: ${TABLE}.orgname ;;
  }

  dimension: orgrole {
    type: string
    sql: ${TABLE}.orgrole ;;
  }

  dimension: projectid {
    type: string
    sql: ${TABLE}.projectid ;;
  }

  dimension: projectrole {
    type: string
    sql: ${TABLE}.projectrole ;;
  }

  dimension: userinterest {
    type: string
    sql: ${TABLE}.userinterest ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitorId ;;
  }

  measure: count {
    type: count
    drill_fields: [lastbrowsername, orgname, fullname, lastservername]
  }
}
