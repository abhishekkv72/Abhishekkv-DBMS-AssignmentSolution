CREATE DEFINER=`root`@`localhost` PROCEDURE `cost_procedure`()
BEGIN
select passenger.Distance, price.Price , case
when price.Price >1000 then 'Expensive'
when price.Price <500 then 'Cheap'
else 'Average Cost' 
end as verdict from price inner join passenger on passenger.distance=price.distance;
END