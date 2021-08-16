require 'pg'

# con = PG::Connection.open(host: 'codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com', port: 5432, user: 'codeboxx', dbname:'RayanTaing_datawarehouse_development', password:'Codeboxx1!')

con = PG::Connection.open(host: 'ls-5e271cd9a16a2159f980e6c95d1ef49f19d9fa58.c8sdcbmurulc.us-east-1.rds.amazonaws.com', port: 5432, user: 'dbmasteruser', dbname:'ColbyBdwh', password:'rWdw]!GngDV_NOI2)h=rl9Q32F*b:OoA')

#con = PG::Connection.open(host: 'localhost', port: 5432, user: 'postgres', dbname:'datawarehouse_development', password:'12345')

random_status = ["Pending", "InProgress", "Interrupted", "Resumed", "Complete"]
random_result = ["Success", "Failure", "Incomplete"]
random_id = [41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]
namespace :api do

  desc "FactIntervention table"
  task factintervention: :environment do
    con.exec('DROP TABLE IF EXISTS FactIntervention')
    con.exec('CREATE TABLE FactIntervention(
      id INT,
      EmployeeID INT,
      BuildingID INT,
      BatteryID INT,
      ColumnID INT,
      ElevatorID INT,
      Start_date TIMESTAMP,
      End_date TIMESTAMP,
      Result VARCHAR,
      Report VARCHAR,
      Status VARCHAR) ;')
  end

  task fiseed: :environment do
    con.exec("TRUNCATE TABLE FactIntervention RESTART IDENTITY;")
    Employee.all.each do |e|
    fakeid = e.id
    fakeBuildingId = random_id.sample
    fakeBatteryId = Faker::Number.number(digits: 2)
    fakeColumnId = Faker::Number.number(digits: 2)
    fakeElevatorId = Faker::Number.number(digits: 2)
    fakeStartDate = Faker::Time.between(from: '2021-01-01 00:00:00', to: '2021-03-01 23:59:59')
    fakeEndDate = Faker::Time.between(from: '2021-03-01 00:00:00', to: '2021-07-01 23:59:59')
    status = random_status.sample
    result = random_result.sample
    fakeReport = Faker::Lorem.paragraph
    con.exec("INSERT INTO FactIntervention (id, EmployeeID, BuildingID, BatteryID, ColumnID, ElevatorID, Start_date, End_date, Status, Result, Report) VALUES (#{fakeid}, #{e.id}, #{fakeBuildingId}, #{fakeBatteryId}, #{fakeColumnId}, #{fakeElevatorId}, '#{fakeStartDate}', '#{fakeEndDate}', '#{status}', '#{result}', '#{fakeReport}');")
    end

  end

  # task fiseed: :environment do
  #   con.exec("TRUNCATE TABLE FactIntervention RESTART IDENTITY;")
  #   Building.all.each do |bld|
  #     buildingID = bld.building_detail.building_id
  #     fakeStartDate = Faker::Time.between(from: '2021-01-01 00:00:00', to: '2021-07-01 23:59:59')
  #     status = random_status.sample
  #     result = random_result.sample
  #     bld.batteries.all.each do |bat|
  #       batteryID = bat.id
  #       bat.employee do |emp|
  #         employeeID = emp.id
  #       end
  #     end
  #     con.exec("INSERT INTO FactIntervention (EmployeeID, BuildingID, BatteryID, Status, Result) VALUES (#{employeeID}, #{buildingID}, '#{batteryID}', '#{status}', '#{result}');")
  #   end

  

end