- dashboard: pendo_application_usage
  title: Dataloop Usage - Pendo as Data Source
  layout: newspaper
#  preferred_viewer: dashboards-next
#  preferred_slug: ltUO8h9XUg03t45HGpwOUN
  elements:
  - title: Most Active Account by Page Visits
    name: Most Active Account by Page Visits
    model: bqreportingwh
    explore: pendo_page_events
    type: looker_bar
    fields:
    - pendo_page_events.account_id
    - pendo_page_events.count
    sorts:
    - pendo_page_events.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_page_events.count: "#497ec4"
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 30
    col: 12
    width: 12
    height: 7
  - title: Most Active Visitors by Page Visits
    name: Most Active Visitors by Page Visits
    model: bqreportingwh
    explore: pendo_page_events
    type: looker_bar
    fields:
    - pendo_page_events.visitor_id
    - pendo_page_events.count
    sorts:
    - pendo_page_events.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_page_events.count: "#497ec4"
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 30
    col: 0
    width: 12
    height: 7
  - title: Top 10 Pages
    name: Top 10 Pages
    model: bqreportingwh
    explore: pendo_page_events
    type: looker_bar
    fields:
    - pendo_pages.name
    - pendo_page_events.count
    filters:
      pendo_pages.name: "-Null -Dashboard Home"
    sorts:
    - pendo_page_events.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_page_events.count: "#497ec4"
    series_labels:
      pendo_page_events.count: Page Event Count - Excludes Dashboard Home Page
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 22
    col: 0
    width: 24
    height: 8
  - title: Top 10 Features
    name: Top 10 Features
    model: bqreportingwh
    explore: pendo_feature_events
    type: looker_bar
    fields:
    - pendo_features.name
    - pendo_feature_events.count
    sorts:
    - pendo_feature_events.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_feature_events.count: "#497ec4"
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 37
    col: 0
    width: 24
    height: 8
  - title: Most Active Visitors by Feature Visits
    name: Most Active Visitors by Feature Visits
    model: bqreportingwh
    explore: pendo_feature_events
    type: looker_bar
    fields:
    - pendo_feature_events.visitor_id
    - pendo_feature_events.count
    sorts:
    - pendo_feature_events.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_feature_events.count: "#497ec4"
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 45
    col: 0
    width: 12
    height: 7
  - title: Most Active Account by Feature Visits
    name: Most Active Account by Feature Visits
    model: bqreportingwh
    explore: pendo_feature_events
    type: looker_bar
    fields:
    - pendo_feature_events.count
    - pendo_feature_events.account_id
    sorts:
    - pendo_feature_events.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_feature_events.count: "#b9b9b9"
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 45
    col: 12
    width: 12
    height: 7
  - title: Account Industry
    name: Account Industry
    model: bqreportingwh
    explore: pendo_accounts
    type: looker_column
    fields:
    - pendo_accounts.industry
    - pendo_accounts.count
    filters:
      pendo_accounts.industry: "-NULL"
    sorts:
    - pendo_accounts.count desc
    limit: 10
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      pendo_accounts.count: "#90c8ae"
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: pendo_accounts.count
        name: Account Count
        axisId: pendo_accounts.count
      showLabels: false
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 52
    col: 0
    width: 24
    height: 7
  - title: Visitor Operating Systems Used
    name: Visitor Operating Systems Used
    model: bqreportingwh
    explore: pendo_visitors
    type: looker_column
    fields:
    - pendo_visitors.lastoperatingsystem
    - pendo_visitors.count
    sorts:
    - pendo_visitors.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors:
      pendo_visitors.count: "#90c8ae"
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 59
    col: 0
    width: 8
    height: 6
  - title: Visitor Web Browser Used
    name: Visitor Web Browser Used
    model: bqreportingwh
    explore: pendo_visitors
    type: looker_column
    fields:
    - pendo_visitors.count
    - pendo_visitors.lastbrowsername
    sorts:
    - pendo_visitors.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    series_colors:
      pendo_visitors.count: "#90c8ae"
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 59
    col: 8
    width: 8
    height: 6
  - title: Web Browser and Browser Versions In Use
    name: Web Browser and Browser Versions In Use
    model: bqreportingwh
    explore: pendo_visitors
    type: table
    fields:
    - pendo_visitors.lastbrowsername
    - pendo_visitors.lastbrowserversion
    sorts:
    - pendo_visitors.lastbrowsername
    - pendo_visitors.lastbrowserversion desc
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      pendo_visitors.lastbrowsername: Browser Name
      pendo_visitors.lastbrowserversion: Browser Version
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 59
    col: 16
    width: 8
    height: 6
