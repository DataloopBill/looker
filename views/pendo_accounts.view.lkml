# The name of this view in Looker is "Pendo Accounts"
view: pendo_accounts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `pendo_data.pendoAccounts`
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

  dimension: arrannuallyrecurringrevenue {
    type: string
    sql: ${TABLE}.arrannuallyrecurringrevenue ;;
  }

  dimension: customersuccessmanager {
    type: string
    sql: ${TABLE}.customersuccessmanager ;;
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

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: org_industry {
    type: string
    sql: ${TABLE}.org_industry ;;
  }

  dimension: org_name {
    type: string
    sql: ${TABLE}.org_name ;;
  }

  dimension: org_size {
    type: string
    sql: ${TABLE}.org_size ;;
  }

  dimension: planlevel {
    type: string
    sql: ${TABLE}.planlevel ;;
  }

  dimension: renewaldate {
    type: string
    sql: ${TABLE}.renewaldate ;;
  }

  dimension: totallicenses {
    type: string
    sql: ${TABLE}.totallicenses ;;
  }

  measure: count {
    type: count
    drill_fields: [name, org_name]
  }
}
