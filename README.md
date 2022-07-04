Create model


    1. In your database, run loadsmart.sql file



Load the data


      1. Download and install Pentaho

      2. Open loadsmart.ktr file and press CTRL + SHIFT + J and insert the database credentials and csv path 

          ![image](https://user-images.githubusercontent.com/33011210/177075411-ea0f9783-d493-4a83-8bdb-e936274da466.png)

      3. Press F9 and run the file


    ### Using dbt (incomplete)

    Set your database in profiles.yml
    Run the following commands:
    - dbt seed
    - dbt run

