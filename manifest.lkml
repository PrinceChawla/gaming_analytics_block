## What table houses your events?
constant: events_table {
  value: "`mlconsole-poc.gaming_demo_dev.events_data_src`"
}
## When did the event occour?
constant: timestamp_field {
  value: "event"
}

## What country was the event fired from?
constant: country_field {
  value: "Country"
}

## is as the device's platform?
constant: platform_field {
  value: "device_platform"
}

## What is the game version?
constant: version_field {
  value: "game_version"
}

## What is the game name field? (for schemas with multiple fields)
constant: game_name_field {
  value: "game_name"
}

## What is the user/player ID field?
constant: user_id_field {
  value: "userid"
}

## What is name of the event field (i.e. start_match)?
constant: event_name_field {
  value: "event_name"
}

## What is name of the acquisition cost field?
constant: acquisition_cost_field {
  value: "install_cost"
}


## What is name of the ad revenue field?
constant: ad_revenue_field {
  value: "Ad_cost"
}


## What is name of the event field (i.e. start_match)?
constant: iap_revenue_field {
  value: "first_purchase"
}
constant: user_cohort {
  value: "User_Cohort"
}
constant: campaign_type {
  value: "Campaign_type"
}
constant: linear_attr_rev {
  value: "linear_attr_rev"
}
constant: position_attr_rev {
  value: "position_attr_rev"
}
constant: first_click_attr_rev {
  value: "first_click_attr_rev"
}
constant: last_click_attr_rev {
  value: "last_click_attr_rev"
}
constant: timedecay_attr_rev {
  value: "timedecay_attr_rev"
}
constant: last_non_direct_click_attr_rev {
  value: "last_non_direct_click_attr_rev"
}
constant: channel {
  value: "channel"
}

constant: clv {
  value: "clv"
}
constant: avg_predicted_value {
  value: "Avg_Predicted_Value"
}

visualization: {
  id: "spider-marketplace-dev"
  label: "Spider Viz1"
  url: "https://marketplace-api.looker.com/viz-dist/spider.js"
  sri_hash: "oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC"
  dependencies: ["https://code.jquery.com/jquery-2.2.4.min.js","https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js","https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.6/d3.min.js","https://cdnjs.cloudflare.com/ajax/libs/d3-legend/1.13.0/d3-legend.min.js"]
}
