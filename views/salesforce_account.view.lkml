view: salesforceaccount {
  label: "As Sold Capacity"
  sql_table_name: pendo_data.salesforceAccount ;;

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.Account_Dataloop_ID__c ;;
  }

  dimension: account_name {
    label: "Account Name"
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: churn_reason {
    label: "Churn Reason"
    type: string
    sql: ${TABLE}.Churn_Reason__c ;;
  }

  dimension: contracted_value {
    label: "Contracted Value"
    type: string
    sql: ${TABLE}.Contracted_Value__c ;;
  }

  dimension: parsed_effective_churn_date {
    label: "Parsed Effective Churn Date"
    type: string
    hidden: yes
    sql: PARSE_DATETIME('%Y-%m-%d',${TABLE}.Effective_Churn_Date__c) ;;
  }

  dimension_group: effective_churn_date {
    label: "Effective Churn Date"
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
    sql: ${parsed_effective_churn_date} ;;
  }

  dimension: labeling_svc_hours {
    label: "Labeling Service Hours"
    type: string
    sql: ${TABLE}.Data_Labeling_Service_Total_Enteries_Hr__c ;;
  }

  dimension: labeling_svc_team_type {
    label: "Labeling Service Team Type"
    type: string
    sql: ${TABLE}.Data_Labeling_Team_Type__c ;;
  }

  dimension: data_volume {
    label: "Data Volume"
    type: string
    sql: ${TABLE}.Data_Volume__c ;;
  }

  dimension: lifecycle_stage {
    label: "Lifecycle Stage"
    type: string
    sql: ${TABLE}.Lifecycle_Stage__c ;;
  }

  dimension: open_opportunities {
    label: "Open Opporunities"
    type: string
    sql: ${TABLE}.Open_Opportunities__c ;;
  }

  dimension: owner_id {
    label: "Owner ID"
    type: string
    sql: ${TABLE}.OwnerId ;;
  }

  dimension: cs_owner {
    label: "CS Owner"
    type: string
    sql: ${TABLE}.CS_Owner__c ;;
  }

  dimension: parent_id {
    label: "Parent ID"
    type: string
    sql: ${TABLE}.ParentId ;;
  }

  dimension: partner_name {
    label: "Partner Name"
    type: string
    sql: ${TABLE}.Partner_Name__c ;;
  }

  dimension: platform_package {
    label: "Platform License Package"
    type: string
    sql: ${TABLE}.Platform_License_Package__c ;;
  }

  dimension: prof_svcs_hours {
    label: "PS Hours"
    type: string
    sql: ${TABLE}.Professional_Service_Total_Enteries_Hr__c ;;
  }

  dimension: region {
    label: "Region"
    type: string
    sql: ${TABLE}.Region__c ;;
  }

  dimension: support_tier {
    label: "Support Tier"
    type: string
    sql: ${TABLE}.Support_Tier__c ;;
  }

  dimension: support_hours {
    label: "Support Hours"
    type: string
    sql: ${TABLE}.Support_Total_Enteries_Hr__c ;;
  }

  dimension: total_arr {
    label: "Total ARR"
    type: string
    sql: ${TABLE}.Total_ARR__c ;;
  }

  dimension: type {
    label: "Account Type"
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: woorking_with_partner {
    label: "Working With Partner"
    type: yesno
    sql: ${TABLE}.Working_with_Partner__c ;;
  }
}
