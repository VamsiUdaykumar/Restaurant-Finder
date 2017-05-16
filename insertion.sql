insert into Restaurant
 VALUES ('Non Veg', ROW('775','100 FT Ring Road', 'Indirangar', 'Bangalore'), 'Casual Dining', 'Ginger Tiger','7:30 AM', '9:30 PM');

 insert into Restaurant
 VALUES ('Non Veg', ROW('462','Sree Krishna Temple Road', 'Indirangar', 'Bangalore'), 'Casual Dining', 'SriNathJis','9:30 AM', '10:30 PM');
 
  insert into Restaurant
 VALUES ('Non Veg', ROW('124','JyothiNivas College 1st cross, KHB colony', 'Kormangala', 'Bangalore'), 'Casual Dining', 'MeghanaFoods','12:30 PM', '4:00 PM');
 
  
  insert into Restaurant
 VALUES ('Non Veg', ROW('LR ARCADE','4121', 'Old Airport Road', 'Bangalore'), 'Pub', 'Big Pitcher','11:00 AM', '7:00 PM');
 
  insert into Restaurant
 VALUES ('Veg', ROW('57','Opposite Galaxy Mall', 'Residency Road', 'Bangalore'), 'Quick Bites', 'Veg Feast','7:00 AM', '10:00 PM');
  insert into Restaurant
 VALUES ('Non Veg', ROW('','', 'Sarjapur Road', 'Bangalore'), 'Quick Bites', 'Warm Oven','8:00 AM', '12 Midnight');
 
 
 insert into Contact
 VALUES('Ginger Tiger', 'gingertitger@gmail.com',  08069994949, 9845420953);
 
  insert into Contact
 VALUES('SriNathJis', 'Srinaths76@gmail.com',  08068894949, 9845420953);
 
   insert into Contact
 VALUES('MeghanaFoods', 'megahanfoods100@hotmail.com',  08068874839, 9832429531);
 
   insert into Contact
 VALUES('Big Pitcher', 'Pitcherhomies@yahoo.in',  08028894949, 9889763214);
 
   insert into Contact
 VALUES('Veg Feast', 'BiteQuick@gmail.com',  08028897449, 7845420953);
 
    insert into Contact
 VALUES('Warm Oven', 'DesertsINOven@gmail.com',  08023345671, 7844421951);
 
 
 
 insert into Cuisines
 VALUES ('Chinese', 'Ginger Tiger'),
		('Asian', 'Ginger Tiger'),
		('Chinese', 'SriNathJis'),
		('North Indian', 'SriNathJis'),
		('Street Food', 'SriNathJis'),
		('Andhra', 'MeghanaFoods'),
		('SeaFood', 'MeghanaFoods'),
		('American', 'Big Pitcher'),
		('Continental', 'Big Pitcher'),
		('North Indian', 'Big Pitcher'),
		('Fast Food', 'Veg Feast');
		('Bakery', 'Warm Oven');
		
insert into Delivery
VALUES ('Warm Oven', 9732123456, '30 minutes', 20.00);

insert into catering
VALUES ('Ginger Tiger', 1000.0, 'Birthday Parties'),
	   ('MeghanaFoods', 5000.0, 'Anniversaries'),
	   ('Warm Oven', 9000.0, 'Marriage');
	   
insert into owner
VALUES ('Vishal Kumar Naidu', 7259450978, 'Ginger Tiger'),
	   ('Vibhav Maheshwari', 9632928561, 'MeghanaFoods'),
	   ('Vamsi Udayakumar', 8951065575, 'Warm Oven');
	   
insert into starchef
VALUES ('Ginger Tiger', 'Vikas Khanna', 'Dragon Prawns', 1028737),
	   ('MeghanaFoods', 'Mukund Sood', 'Biryani', 1010101),
	   ('Warm Oven', 'Vinay GB', 'Red Velvet Cake', 9743624);
	   
insert into menu
VALUES ('Ginger Tiger', 'Chopsy', 400.50),
	   ('MeghanaFoods', 'Hyderabadi Biryani', 1000.00),
	   ('Warm Oven', 'Red Velvet Cake', 1500.00),
	   ('Ginger Tiger', 'Dragon Prawns', 1200.00),
	   ('MeghanaFoods', 'Mutton Biryani', 600.00),
	   ('Warm Oven', 'Black Forest', 750.25),
	   ('SriNathJis', 'Bhel Puri', 50.50),
	   ('Big Pitcher', 'Tuborg Pitcher', 2500.00),
	   ('Veg Feast', 'Farmhouse Pizza', 500.00);
	   
select * from Restaurant;
select * from Contact;
select * from Cuisines;
select * from Delivery;
select * from owner;
select * from starchef;
select * from menu;

select res_name from owner where name='Vishal Kumar Naidu';

select res_name from starchef where name='Vinay GB';

select res_name from restaurant where res_name in(select res_name from cuisines where type_='Chinese');

select dish from menu group by dish having cost<1000.00;

select res_number from Contact where res_name in(select res_name from restaurant where res_name in(select res_name from delivery));

select * from restaurant where type_='Non Veg';

select name from owner where res_name in(select res_name from restaurant);

select name from owner where res_name in(select res_name from restaurant where category='Casual Dining' or category='Pub');

select name from owner where res_name not in(select res_name from restaurant where category='Casual Dining' or category='Pub');

select dish from menu group by dish having cost<500.00 or cost>2000.00;

select res_number from Contact where res_name in(select res_name from delivery);

select catering.res_name from catering, Delivery where Delivery.res_name=catering.res_name;