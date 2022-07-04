Create model


    1. In your database, run loadsmart.sql file



Load the data


      1. Download and install Pentaho at https://sourceforge.net/projects/pentaho/files/Data%20Integration/

      2. Open loadsmart.ktr file and press CTRL + SHIFT + J and insert the database credentials and csv path 
      
   ![image](https://user-images.githubusercontent.com/33011210/177151505-8bb60d73-dc02-4c82-9ba3-1270268f580a.png)

      3. Press F9 and run the file

    Using dbt (incomplete)

    Set your database in profiles.yml
    Run the following commands:
    - dbt seed
    - dbt run

View

    Access the dashboard at https://app.powerbi.com/view?r=eyJrIjoiZGNjOWIzYTktZjU2Zi00YmY3LTllMjktNjk4MDhmNjg5MTcxIiwidCI6ImQ4YWJlMmU4LTlhMzItNDdlNy1hMzY0LWFjOTEyMGQ1NDI4NyJ9&pageName=ReportSection or open loads.pbix at Power BI
