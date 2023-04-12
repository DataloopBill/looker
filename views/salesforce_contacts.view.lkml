view: salesforcecontacts {
  label: "Salesforce Contact Data"
  sql_table_name: pendo_data.salesforceContacts ;;

  dimension: contact_id {
    label: "Contact ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.Id ;;
  }

  dimension: contact_name {
    label: "Contact Name"
    type: string
    sql: ${TABLE}.Name ;;
  }
}
