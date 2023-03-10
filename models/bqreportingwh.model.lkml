# Define the database connection to be used for this model.
connection: "bqreportingwh"

# include all the views
include: "/views/**/*.view"

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

explore: pendo_features {}

explore: pendo_pages {}

explore: pendo_feature_events {}

explore: dataloop_metrics_daily {
  label: "Dataloop Daily Metrics"
}

explore: pendo_accounts {
  label: "Pendo Accounts"
}

explore: pendo_page_events {}

explore: pendo_visitors {}
