select * from laptop;

-- drop that unnecessary column MyUnknownColumn
alter table laptop drop column MyUnknownColumn;

-- How may values in this dataset ?
select count(*) from laptop;

-- What is the average laptop price in the dataset?
select round(avg(price)) from laptop;

-- Which laptop company has the highest average price
select company,max(price) as highest_laptop_price from laptop group by Company limit 1;

-- How many laptops have a touchscreen feature company wise ?
select company,count(Touchscreen) as number_of_touchscreen from laptop group by company order by number_of_touchscreen desc;

-- How many laptops have a dedicated GPU and a touchscreen?
select count(*) as 'dedicated Gpu and touchscreen' from laptop where "Gpu brand" is not null and Touchscreen=1;

-- What is the price range (minimum and maximum) for laptops with IPS displays?
select max(price) as max_price,min(price) as min_price,avg(price) as average_price from laptop where IPS=1;

-- What is the average price of laptops with macOS?
select company,Os,avg(price) from laptop group by Company,Os having Os='mac';

