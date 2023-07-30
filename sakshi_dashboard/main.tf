resource "newrelic_one_dashboard" "exampledashboard" {
  name        = "sakshi_dashboard"
  permissions = "public_read_only"

  page {
    name = "New Relic Terraform Dashboard"

    widget_billboard {
      title  = "Requests per minute"
      row    = 2
      column = 1
      width  = 4
      height = 3

      nrql_query {
        account_id = 4043634
        query = "FROM Transaction SELECT rate(count(*), 1 minute)"
      }
    }

    widget_bar {
      title  = "Average transaction duration, by application"
      row    = 1
      column = 7
      width  = 4
      height = 3

      nrql_query {
        account_id = 4043634
        query      = "FROM Transaction SELECT average(duration) FACET appName"
      }


    }

   
  }
}