create schema cars;
select * from cars.car_dekho;
use cars;
---- READ DATA -----
select * from car_dekho;
-- Total cars: to get a count of total records --
select count(*) from car_dekho;
-- The manager asked the employee How many cars will be available for 2023 --
select count(*) from car_dekho where year = 2023;
-- The manager asked the employee How many cars will be available for 2020,2021,2022 --
select count(*) from car_dekho where year = 2020; # 74
select count(*) from car_dekho where year = 2021; # 7
select count(*) from car_dekho where year = 2022; # 7
--- GROUP BY ---
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- Client asked me to print of all cars by year. I don't see all the details --
select year,count(*) from car_dekho group by year;
-- Client asked to car dealer agent How many diesel cars will there be in 2020 --
select count(*) from car_dekho where year = 2020 and fuel = 'Diesel'; # 20
-- Client sked to car dealer agent How many petrol cars will there be in 2020 --
select count(*) from car_dekho where year = 2020 and fuel = 'Petrol'; # 51
-- The manager told the employee to give a print All the fuel cars(petrol,diesel and CNG) come by all year --
select year,count(*) from car_dekho where fuel = 'Petrol' group by year; 
select year,count(*) from car_dekho where fuel = 'Diesel' group by year; 
select year,count(*) from car_dekho where fuel = 'CNG' group by year; 
-- Manager said there were more than 100  cars in a given year,which year had more than 100 cars? --
select year,count(*) from car_dekho group by year having count(*) > 100;
select year,count(*) from car_dekho group by year having count(*) < 100;
-- The manager said the employee All the cars count details between 2015 and 2023; we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023; # 4124
-- The manager said to employee All cars details between 2015 and 2023 we need complete list --
select * from car_dekho where year between 2015 and 2023;

---------------          END         ------------------