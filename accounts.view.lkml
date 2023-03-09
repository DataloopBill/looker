view: accounts {
  label: "Accounts"
  sql_table_name: pendo_data.pendoAccounts ;;

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: string
    sql: ${TABLE}."account_id" ;;
  }

  dimension: customersuccessmanager {
    label: "CSM"
    type: string
    sql: ${TABLE}."customersuccessmanager" ;;
  }

  dimension_group: firstvisit {
    label: "First Visit"
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
    sql: ${TABLE}."firstvisit" ;;
  }

  dimension: industry {
    label: "Account Industry"
    type: string
    sql: ${TABLE}."industry" ;;
  }

  dimension: orgsize {
    label: "Org Size"
    type: string
    sql: ${TABLE}."org_size" ;;
  }

  dimension_group: lastupdated {
    label: "Last Updated"
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
    sql: ${TABLE}."lastupdated" ;;
  }

  dimension_group: lastvisit {
    label: "Last Visit"
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
    sql: ${TABLE}."lastvisit" ;;
  }

  dimension: name {
    label: "Account Name"
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: orgname {
    label: "Org Name"
    type: string
    sql: ${TABLE}."org_name" ;;
  }

  dimension: planlevel {
    label: "Plan Level"
    type: string
    sql: ${TABLE}."planlevel" ;;
  }

  dimension_group: renewaldate {
    label: "Renewal Date"
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
    sql: ${TABLE}."renewaldate" ;;
  }

  dimension: totallicenses {
    label: "Total Licenses"
    type: string
    sql: ${TABLE}."totallicenses" ;;
  }

  measure: count {
    label: "Account Count"
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      account_id,
      name
    ]
  }
}
