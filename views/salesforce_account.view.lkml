view: salesforceaccount {
  label: "Salesforce Account Data"
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
    type: number
    value_format: "$#,##0.00;($#,##0.00)"
    sql: ${TABLE}.Contracted_Value__c ;;
  }

#  dimension: parsed_effective_churn_date {
#    label: "Parsed Effective Churn Date"
#    type: string
#    hidden: yes
#    sql: ${TABLE}.Effective_Churn_Date__c ;;
#  }

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
    sql: ${TABLE}.Effective_Churn_Date__c ;;
  }

  dimension: labeling_svc_hours {
    label: "Labeling Service Hours"
    type: number
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
    type: number
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
    type: number
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
    type: number
    sql: ${TABLE}.Support_Total_Enteries_Hr__c ;;
  }

  dimension: total_arr {
    label: "Total ARR"
    type: number
    value_format: "$#,##0.00;($#,##0.00)"
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

  dimension: time_to_deal {
    label: "Time to Deal"
    type: number
    sql: ${TABLE}.Account_Time_to_Deal__c ;;
  }

  dimension: alcd_email_rcvd {
    label: "ALCD Email Received"
    type: yesno
    sql: ${TABLE}.alcd_Email_Received__c ;;
  }

  dimension: company_size {
    label: "Company Size"
    type: string
    sql: ${TABLE}.Company_Size__c ;;
  }

  dimension_group: first_closed_date {
    label: "First Closed Date"
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
    sql: ${TABLE}.First_Closed_Date__c ;;
  }

  dimension: funding_amount {
    label: "Funding Amount"
    type: string
    sql: ${TABLE}.Funding_Amount__c ;;
  }

  dimension: funding_round {
    label: "Funding Round"
    type: string
    sql: ${TABLE}.Funding_Round__c ;;
  }

  dimension: hear_about_us {
    label: "How You Head About Us"
    type: string
    sql: ${TABLE}.How_Did_You_Hear_About_Us__c ;;
  }

  dimension: industry {
    label: "Industry"
    type: string
    sql: ${TABLE}.Industry ;;
  }

  dimension: marketo_sales_insight {
    label: "Marketo Sales Insight"
    type: string
    sql: ${TABLE}.mkto_si__Sales_Insight__c ;;
  }

  dimension: need_pain {
    label: "Need Pain"
    type: string
    sql: ${TABLE}.Need_Pain__c ;;
  }

  dimension: num_of_contacts{
    label: "Number of Contacts"
    type: number
    sql: ${TABLE}.Number_of_Contacts__c ;;
  }

  dimension: num_of_employees {
    label: "Number of Employees"
    type: number
    sql: ${TABLE}.NumberOfEmployees ;;
  }

  dimension: size_of_ml_team{
    label: "Size of ML Team"
    type: string
    sql: ${TABLE}.Size_of_ML_Team__c ;;
  }

  dimension: source {
    label: "Source"
    type: string
    sql: ${TABLE}.Source__c ;;
  }

  dimension: source_activity_content {
    label: "Source Activity Content"
    type: string
    sql: ${TABLE}.Source_Activity_Content__c ;;
  }

  dimension_group: source_activity_date {
    label: "Source Activity Date"
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
    sql: ${TABLE}.Source_Activity_Date__c ;;
  }

  dimension: source_activity_method {
    label: "Source Activity Method"
    type: string
    sql: ${TABLE}.Source_Activity_Method__c ;;
  }

  dimension: source_activity_program {
    label: "Source Activity Program"
    type: string
    sql: ${TABLE}.Source_Activity_Program__c ;;
  }

  dimension: source_activity_type {
    label: "Source Activity Type"
    type: string
    sql: ${TABLE}.Source_Activity_Type__c ;;
  }

  dimension: source_category {
    label: "Source Category"
    type: string
    sql: ${TABLE}.Source_Category__c ;;
  }

  dimension: source_details {
    label: "Source Details"
    type: string
    sql: ${TABLE}.Source_Detail__c ;;
  }

  dimension: source_type{
    label: "Source Type"
    type: string
    sql: ${TABLE}.Source_Type__c ;;
  }

  dimension: sub_source {
    label: "Sub Source"
    type: string
    sql: ${TABLE}.Sub_Source__c ;;
  }
}
