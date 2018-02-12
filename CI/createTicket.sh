curl -D- -u username:password -X POST https://yourjiraserverip/rest/api/2/issue --data '{

      "fields": {
       "project":
       {
          "key": "HELLOWORLD"
       },
       "summary": "Test-RestAPI",
       "description": "Creating a Task using project keys and issue type names using the REST API",
       "issuetype": {
          "name": "Task"
       },
        "customfield_10200": { "name": "anyname" },
        "customfield_10800": { "name": "someothername" }

   }

    }' -H "Content-Type: application/json"