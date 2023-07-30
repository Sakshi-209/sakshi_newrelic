terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}


provider "newrelic" {
  account_id = 4043634
  api_key = "NRAK-GMYEUPXK03NE5X71MFCE4A3IMH2" 
  region = "US"                    
}