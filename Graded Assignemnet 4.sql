create database GradedProjectDBMS;

use GradedProjectDBMS;

create table GradedProjectDBMS.Passenger(Passenger_name varchar(50) , Category varchar(50) , Gender varchar(50) , Boarding_City varchar(50) , Destination_City varchar(50) ,Distance int , Bus_Type varchar(50));
create table GradedProjectDBMS.Price(Bus_Type varchar(50) , Distance int , Price int);

insert into passenger(Passenger_name, Category, Gender , Boarding_City, Destination_City, Distance, Bus_Type) values ("Sejal" ,"AC", "F" , "Bengaluru", "Chennai", 350, "Sleeper");
insert into passenger(Passenger_name, Category, Gender , Boarding_City, Destination_City, Distance, Bus_Type) values ("Anmol" ,"Non-AC", "M" , "Mumbai", "Hyderabad", 700, "Sitting");
insert into passenger(Passenger_name, Category, Gender , Boarding_City, Destination_City, Distance, Bus_Type) values ("Pallavi" ,"AC", "F" , "Panaji", "Bengaluru", 600, "Sleeper");
insert into passenger(Passenger_name, Category, Gender , Boarding_City, Destination_City, Distance, Bus_Type) values ("Khushboo" ,"AC", "F" , "Chennai", "Mumbai", 1500, "Sleeper");
insert into passenger(Passenger_name, Category, Gender , Boarding_City, Destination_City, Distance, Bus_Type) values ("Udit" ,"Non-AC", "M" , "Trivandrum", "Panaji", 1000, "Sleeper");
insert into passenger(Passenger_name, Category, Gender , Boarding_City, Destination_City, Distance, Bus_Type) values ("Ankur" ,"AC", "M" , "Nagpur", "Hyderabad", 500, "Sitting");
insert into passenger(Passenger_name, Category, Gender , Boarding_City, Destination_City, Distance, Bus_Type) values ("Hemant" ,"Non-AC", "M" , "Panaji", "Mumbai", 700, "Sleeper");
insert into passenger(Passenger_name, Category, Gender , Boarding_City, Destination_City, Distance, Bus_Type) values ("Manish" ,"Non-AC", "M" , "Hyderabad", "Bengaluru", 500, "Sitting");
insert into passenger(Passenger_name, Category, Gender , Boarding_City, Destination_City, Distance, Bus_Type) values ("{Piyush" ,"AC", "M" , "Pune", "Nagpur", 700, "Sitting");

insert into price(Bus_Type, Distance, Price) values("Sleeper", 350, 770);
insert into price(Bus_Type, Distance, Price) values("Sleeper", 500, 1100);
insert into price(Bus_Type, Distance, Price) values("Sleeper", 600, 1320);
insert into price(Bus_Type, Distance, Price) values("Sleeper", 700, 1540);
insert into price(Bus_Type, Distance, Price) values("Sleeper", 1000, 2200);
insert into price(Bus_Type, Distance, Price) values("Sleeper", 1200, 2640);
insert into price(Bus_Type, Distance, Price) values("Sleeper", 1500, 2700);
insert into price(Bus_Type, Distance, Price) values("Sitting", 500, 620);
insert into price(Bus_Type, Distance, Price) values("Sitting", 600, 744);
insert into price(Bus_Type, Distance, Price) values("Sitting", 700, 868);
insert into price(Bus_Type, Distance, Price) values("Sitting", 1000, 1240);
insert into price(Bus_Type, Distance, Price) values("Sitting", 1200, 1488);
insert into price(Bus_Type, Distance, Price) values("Sitting", 1500, 1860);

SELECT COUNT(CASE WHEN (Gender) = 'F' THEN 1 END) Female FROM passenger WHERE Distance >=600;
SELECT COUNT(CASE WHEN (Gender) = 'M' THEN 0 END) Male FROM passenger WHERE Distance >=600;

SELECT MIN(price) FROM price WHERE Bus_Type = 'sleeper';

SELECT * FROM passenger WHERE Passenger_name LIKE 's%';

SELECT Passenger_name , p1.Boarding_City, p1.Destination_city, p1.Bus_Type, p2.Price FROM passenger p1, price p2 WHERE p1.Distance = p2.Distance and p1.Bus_type = p2.Bus_type;

SELECT p1.Passenger_name, p1.Boarding_city, p1.Destination_city, p1.Bus_type, p2.Price FROM passenger p1, price p2 WHERE p1.Distance = 1000 and p1.Bus_type = 'Sitting' and p1.Distance = 1000 and p1.Bus_type = 'Sitting';

SELECT DISTINCT p1.Passenger_name, p1.Boarding_city as Destination_city, p1.Destination_city as Boardng_city, p1.Bus_type, p2.Price FROM passenger p1, price p2 WHERE Passenger_name = 'Pallavi' and p1.Distance = p2.Distance;

SELECT DISTINCT distance FROM passenger ORDER BY Distance desc;

SELECT Passenger_name, Distance * 100.0/ (SELECT SUM(Distance) FROM passenger)FROM passenger GROUP BY Distance;

select passenger.Distance, price.Price , case
when price.Price >1000 then 'Expensive'
when price.Price <500 then 'Cheap'
else 'Average Cost' 
end as typesofcost from price inner join passenger on passenger.distance=price.distance;

use cost_procedure;



