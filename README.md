Create model


    1. In your database, run loadsmart.sql file



Load the data


      1. Download and install Pentaho

      2. Open loadsmart.ktr file and press CTRL + SHIFT + J and insert the database credentials and csv path 

         ![image](https://user-images.githubusercontent.com/33011210/177151238-7dee1fad-ca80-4d71-9c85-4b0925882ccd.png)

      3. Press F9 and run the file


    ### Using dbt (incomplete)

    Set your database in profiles.yml
    Run the following commands:
    - dbt seed
    - dbt run

