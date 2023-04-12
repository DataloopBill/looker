# Define the database connection to be used for this model.
connection: "bqreportingwh"

# include all the views
include: "/views/**/*.view"

# include all dashboards
include: "/dashboards/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: bqreportingwh_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bqreportingwh_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Bqreportingwh"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: events {
  label: "Pendo Events"

  join: pendo_activeuser_view {
    view_label: "Pendo Active User View"
    relationship: many_to_one
    sql_on: ${events.accountid}=${pendo_activeuser_view.accountid} and ${events.visitorid}=${pendo_activeuser_view.visitorid}  ;;
  }

  join: pendo_activeaccount_view {
    view_label: "Pendo Active Account View"
    relationship: many_to_one
    sql_on: ${events.accountid}=${pendo_activeaccount_view.accountid} ;;
  }

}

explore: salesforceaccount {
  label: "Salesforce Accounts"

  join: salesforceusers {
    view_label: "Salesforce Users"
    type: left_outer
    relationship: many_to_one
    sql_on: ${salesforceaccount.account_id}=${salesforceusers.user_account_id} ;;
  }

  join: salesforcecontacts {
    view_label: "Salesforce Contacts"
    type: left_outer
    relationship: one_to_many
    sql_on: ${salesforceaccount.account_id}=${salesforcecontacts.contact_account_id} ;;
  }
}



explore: salesforceopportunity {
  label: "Salesforce Opportunities"
}

explore: salesforceusers {
  label: "Salesforce Users"
}

explore: salesforcecontacts {
  label: "Salesforce Contacts"
}

explore: pendo_features {
  label: "Pendo Features"
}

explore: pendo_pages {
  label: "Pendo Pages"
}

explore: pendo_feature_events {
  label: "Pendo Feature Events"
  join: pendo_accounts {
    type: left_outer
    sql_on: ${pendo_feature_events.account_id} = ${pendo_accounts.account_id} ;;
    relationship: many_to_one
    }

    join: pendo_visitors {
      type: left_outer
      sql_on: ${pendo_feature_events.visitor_id} = ${pendo_visitors.visitor_id} ;;
      relationship: many_to_one
    }

    join: pendo_features {
      type: left_outer
      sql_on: ${pendo_feature_events.feature_id} = ${pendo_features.id} ;;
      relationship: many_to_one
    }
}

explore: assoldcapacity {
  label: "As Sold Capacity"

  join: dataloop_metrics_daily {
    view_label: "Dataloop Daily Metrics"
    type: left_outer
    relationship: one_to_one
    sql_on: ${assoldcapacity.account_id}=${dataloop_metrics_daily.account_id} ;;
  }
}

explore: dataloop_metrics_daily {
  label: "Dataloop Daily Metrics"
}

explore: pendo_accounts {
  label: "Pendo Accounts"
}

explore: pendo_page_events {
  label: "Pendo Page Events"
  join: pendo_accounts {
    type: left_outer
    sql_on: ${pendo_page_events.account_id} = ${pendo_accounts.account_id} ;;
    relationship: many_to_one
  }

  join: pendo_visitors {
    type: left_outer
    sql_on: ${pendo_page_events.visitor_id} = ${pendo_visitors.visitor_id} ;;
    relationship: many_to_one
  }

  join: pendo_pages {
    type: left_outer
    sql_on: ${pendo_page_events.page_id} = ${pendo_pages.id} ;;
    relationship: many_to_one
  }
}

explore: pendo_visitors {
  label: "Pendo Visitors"
  join: pendo_accounts {
    type: left_outer
    sql_on: ${pendo_visitors.account_id} = ${pendo_accounts.account_id} ;;
    relationship: one_to_many
  }
}
