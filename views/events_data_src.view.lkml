# The name of this view in Looker is "Events Data Src"
view: events_data_src {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `mlconsole-poc.gaming_demo_dev.events_data_src`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ad Cost" in Explore.

  dimension: ad_cost {
    type: number
    sql: ${TABLE}.Ad_cost ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ad_cost {
    type: sum
    sql: ${ad_cost} ;;
  }

  measure: average_ad_cost {
    type: average
    sql: ${ad_cost} ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }
  dimension: age_tier {
    type: tier
    tiers: [20,40,60,80]
    style: integer
    sql: ${age} ;;
  }
  dimension: campaign_type {
    type: string
    sql: ${TABLE}.Campaign_type ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: clv {
    type: number
    sql: ${TABLE}.CLV ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: device_platform {
    type: string
    sql: ${TABLE}.device_platform ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event ;;
  }

  dimension: first_click_attr_rev {
    type: number
    sql: ${TABLE}.first_click_attr_rev ;;
  }

  dimension: first_purchase {
    type: number
    sql: ${TABLE}.first_purchase ;;
  }

  dimension: game_name {
    type: string
    sql: ${TABLE}.game_name ;;
  }

  dimension: install_cost {
    type: number
    sql: ${TABLE}.install_cost ;;
  }

  dimension: install_source {
    type: string
    sql: ${TABLE}.install_source ;;
  }

  dimension: last_click_attr_rev {
    type: number
    sql: ${TABLE}.last_click_attr_rev ;;
  }

  dimension: last_non_direct_click_attr_rev {
    type: number
    sql: ${TABLE}.last_non_direct_click_attr_rev ;;
  }

  dimension: linear_attr_rev {
    type: number
    sql: ${TABLE}.linear_attr_rev ;;
  }

  dimension: position_attr_rev {
    type: number
    sql: ${TABLE}.position_attr_rev ;;
  }

  dimension: timedecay_attr_rev {
    type: number
    sql: ${TABLE}.timedecay_attr_rev ;;
  }

  dimension: user_cohort {
    type: string
    sql: ${TABLE}.User_Cohort ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [game_name]
  }
  measure: Total_CLV {
    type: sum
    sql:  ${TABLE}.clv ;;
    drill_fields: [user_cohort,clv]
  }
  measure: Totallinear_attr_rev {
    type: sum
    sql:  ${TABLE}.linear_attr_rev ;;
  }
  measure: Total_last_click_attr_rev {
    type: sum
    sql:  ${TABLE}.last_click_attr_rev ;;
  }
  measure: Total_last_non_direct_click_attr_rev {
    type: sum
    sql:  ${TABLE}.last_non_direct_click_attr_rev ;;
  }
  measure: Total_position_attr_rev {
    type: sum
    sql:  ${TABLE}.position_attr_rev ;;
  }
  measure: Total_timedecay_attr_rev {
    type: sum
    sql:  ${TABLE}.timedecay_attr_rev ;;
  }
  measure: Total_first_click_attr_rev {
    type: sum
    sql:  ${TABLE}.first_click_attr_rev ;;
  }
}
