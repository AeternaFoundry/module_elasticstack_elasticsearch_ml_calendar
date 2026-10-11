output "elasticsearch_ml_calendars_id" {
  description = "Map of id values across all elasticsearch_ml_calendars, keyed the same as var.elasticsearch_ml_calendars except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_calendar.elasticsearch_ml_calendars : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_ml_calendars_calendar_id" {
  description = "Map of calendar_id values across all elasticsearch_ml_calendars, keyed the same as var.elasticsearch_ml_calendars except keys with no calendar_id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_calendar.elasticsearch_ml_calendars : k => v.calendar_id if v.calendar_id != null && length(v.calendar_id) > 0 }
}
output "elasticsearch_ml_calendars_description" {
  description = "Map of description values across all elasticsearch_ml_calendars, keyed the same as var.elasticsearch_ml_calendars except keys with no description are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_calendar.elasticsearch_ml_calendars : k => v.description if v.description != null && length(v.description) > 0 }
}
output "elasticsearch_ml_calendars_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_ml_calendars, keyed the same as var.elasticsearch_ml_calendars except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_ml_calendar.elasticsearch_ml_calendars : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}

