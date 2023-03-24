view: pendo_activeaccount_view {
  derived_table: {
    sql:
                  SELECT    accountId,
                            MONTH(day) as mth,
                            count(1) as logins
                  from      pendo_data.pendoEvents a
                  group by  1,2
 ;;
  }

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.accountId ;;
  }

  dimension: accountid {
    label: "Account ID"
    sql: ${TABLE}.accountId ;;
  }

  dimension_group: mth {
    label: "Month"
    type: time
    timeframes: [month]
    datatype: date
    convert_tz: no
    sql: ${TABLE}.mth ;;
  }

  dimension: frequency {
    label: "Frequency"
    type: string
    case:{
      when: {
        sql:  ${TABLE}.logins >= 13 ;;
        label: "Daily"}
      when: {
        sql:  ${TABLE}.logins < 13 and ${TABLE}.logins>=5 ;;
        label: "Weekly"}
      when: {
        sql:  ${TABLE}.logins < 5 ;;
        label: "Monthly"}
    }

  }

  measure: account_cnt {
    label: "Account Count"
    type: count

  }

}
