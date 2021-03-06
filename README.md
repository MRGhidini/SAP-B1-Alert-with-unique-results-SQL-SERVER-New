# SAP-B1-Alert-with-unique-results-SQL-SERVER-New

Alert that always returns unique records, being triggered whenever there are new results

# Symptom

Imagine that the client does not want to receive the same result every time the alert is triggered, and wants only new records every time they are added. (As an example I will use Purchase request)

# Requirements

* SQL Server
* SAP Business One
* Job Service Alert - activated in the database and choose every 1 minute for activation

# Usage

1 - First, open the "Query Manager" or "SQL management studio", execute the query "1-AddTemporaryTable.sql" so that the table is created and fed with all existing records.

![Screenshot](img/1.png)

2 - Second, open the "Query Manager", paste the query "2-NewRecordAlertSAP.sql" and save

![Screenshot](img/2.png)

3 - Third, create an alert in "Alert Management" with a frequency of 1 in 1 minute and point the query save in step 2

![Screenshot](img/3.png)

# Final result

Whenever a new record is added, the alert will be activated showing only once, only the new records

* Adding a new purchase request

![Screenshot](img/4.png)

* Receiving alert

![Screenshot](img/5.png)
