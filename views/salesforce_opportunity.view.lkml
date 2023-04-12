view: salesforceopportunity {
  label: "Salesforce Opportunity Data"
  sql_table_name: pendo_data.salesforceOpportunities ;;

  dimension: opportunity_id {
    label: "Opportunity ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: opportunity_name {
    label: "Opportunity Name"
    type: string
    sql: ${TABLE}.Name ;;
  }
}
