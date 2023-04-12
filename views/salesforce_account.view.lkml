view: salesforceaccount {
  label: "As Sold Capacity"
  sql_table_name: pendo_data.salesforceAccount ;;

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.Account_Dataloop_ID__c ;;
  }
}
