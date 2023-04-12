view: salesforceusers {
  label: "Salesforce User Data"
  sql_table_name: pendo_data.salesforceUsers ;;

  dimension: user_id {
    label: "User ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: user_name {
    label: "User Name"
    type: string
    sql: ${TABLE}.Name ;;
  }
}
