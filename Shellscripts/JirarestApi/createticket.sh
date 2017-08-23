# This script shows how to add custom fields into Jira ticket using Rest API's
#!/bin/bash

curl -D- -u mukul.kazla@websym.com:Ciber@2016 -X POST https://websym.atlassian.net/rest/api/2/issue --data '{

      "fields": {
       "project":
       {
          "key": "YourProjectKey"
       },
       "summary": "Test-RestAPI",
       "description": "Creating of an Task using project keys and issue type names using the REST API",
       "issuetype": {
          "name": "Task"
       },
        "customfield_10200": { "name": "ITEM_NAME" }
        

   }

    }' -H "Content-Type: application/json"

