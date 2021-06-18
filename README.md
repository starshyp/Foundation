# Readme for the Rocket Elevators website at http://rocketelevators.online/

* Ruby version : ruby 2.6.6

* Rails version: Rails 5.2.6

* Important Gems: Cancancan, rails-Admin, Devise, Rolify, Pg & Multiverse.

* Databases: MySQL(AlexisBTrepanier) & PostgreSQL(AlexisBTrepanierDataWarehouse).

* General MySQL terminal commands concerning the AlexisBTrepanier database:
    "rails db:create db:migrate db:seed"

* General ProgreSQL terminal commands concerning the AlexisBTrepanierDataWarehouse database:
    - DB=datawarehouse rails db:drop
    - DB=datawarehouse rails db:create
    - DB=datawarehouse rails db:migrate
    - DB=datawarehouse rails db:seed
    
* MySQL Tables: Users, Employees, Roles, Quotes, Leads, Address, Customers, Buildings, BuildingDetails,
    Battery, Columns & Elevarors.

* PostgreSQL Tables: FactQuotes, FactContact, FactElevator & DimCustomers

* Seeding: 21 users(with the password of "codeboxx") & employees, 25 quote forms (these quotes are for the purpose of testing   the   database, the numbers inside do not respect the normal calculations), 10 leads(ContactUs forms),
    100 adresses, 50 customers, 50 building details, 50 buildings; each buildings has 1
    battery  (Total : 50 battery), each battery has 3 columns(Total : 150 columns) & each column has 4 
    elevators (Total : 600 elevators) and a random number of building details between 0 and 5.

* Admin of the site: All of the employees of Rocket Elevators havec the admin privileges so it is possible 
    to have access to the Back Office by connecting to their accounts. We used the email adress of nicolas.genest@codeboxx.biz with password codeboxx to test the website.

* Back Office ONLY visible to admins.

* Data transfer from MySQL to PostgreSQL is done through a rake task : - rails dwh:import.

* For all the data transfers and making the right relationships for the transfers, the ":import" rake task 
    has been used.

* For the three .SQL files, you can use this syntax while in the "current" folder of "AlexisBTrepanier" in the Codeboxx server : psql codeboxx -h codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com -d AlexisBTrepanierDataWarehouse -f QuoteRequest.sql