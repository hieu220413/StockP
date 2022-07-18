DROP DATABASE ASSIGNMENT_PRJ301
GO
CREATE DATABASE ASSIGNMENT_PRJ301
GO
USE ASSIGNMENT_PRJ301
GO

CREATE TABLE category(
	category_id varchar(3) primary key NOT NULL,
	name varchar(100) NOT NULL
);

CREATE TABLE shoes(
	shoes_id varchar(5) primary key NOT NULL,
	name varchar(100) NOT NULL,
	img varchar(20),
	price float,
	category_id varchar(3),
	foreign key(category_id) references category(category_id),
	size int,
	amount int
);

CREATE TABLE customers(
	customer_id int identity(1,1) primary key NOT NULL,
	name nvarchar(100) NOT NULL,
	username varchar(100) NOT NULL,
	gender bit NOT NULL, --0: male, 1:Female
	address nvarchar(500) NOT NULL,
	password varchar(100) NOT NULL
);

CREATE TABLE invoice(
	invoice_id varchar(10) primary key NOT NULL,
	date Date,
	all_total_price float,
	customer_id int,
	foreign key(customer_id) references customers(customer_id)
);

CREATE TABLE invoice_detail(
	shoes_id varchar(5),
	invoice_id varchar(10),
	quantity int,
	size int
	foreign key(shoes_id) references shoes(shoes_id),
	foreign key(invoice_id) references invoice(invoice_id) ON DELETE CASCADE,
	constraint pk_sh_in primary key(shoes_id,invoice_id)
);

USE ASSIGNMENT_PRJ301
--insert into table category(category_id varchar(3), name varchar(100))
INSERT INTO [category] VALUES('BAE','Basketball');
INSERT INTO [category] VALUES('FTB','Football');
INSERT INTO [category] VALUES('RUN','Running');
INSERT INTO [category] VALUES('LIS','Lifestyle');

--insert into table shoes(shoes_id varchar(5) - Basketball:B---- /Football:F---- /Running:R---- /Lifestyle:L----,
--							 name varchar(100), img varchar(20), price float, category_id varchar(3))
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0001','Nike LeBron Witness 6EP','img1.jpg',255.0,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0002','Nike LeBron 17 Ashes','img2.jpg',184.78,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0003','Nike LeBron 17 Currency','img3.jpg',171.74,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0004','Nike LeBron 17 Promise','img4.jpg',184.78,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0005','Nike LeBron 17 MTAA','img5.jpg',215.22,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0006','Nike LeBron 17 Currency','img6.jpg',171.74,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0007','Nike Kyrie Flytrap 5 �SUMMIT VOLT�','img7.jpg',120.0,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0008','Nike Kyrie 7 Icon of Sport','img8.jpg',258.7,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0009','Nike KD 15 Brooklyn Nets','img9.jpg',149.0,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0010','Nike KD 12 Aunt Pearl','img10.jpg',409.0,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0011','Nike PG 6 All Star Weekend','img11.jpg',135.0,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0012','Nike PG 6 Fluoro','img12.jpg',123.0,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0013','Under Armour Curry Flow 9 For the W','img13.jpg',227.0,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0014','Nike Zoom Freak 3 Crimson Bliss','img14.jpg',125.0,'BAE',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('B0015','Nike Zoom Freak 1 Coming to America','img15.jpg',100.0,'BAE',20);

INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0001','Nike Mercurial Vapor 14 Elite FG','img16.jpg',318.22,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0002','Nike Mercurial Superfly 8 Academy TF','img17.jpg',114.3,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0003','Nike Mercurial Dream Speed Superfly 8 Elite FG','img18.jpg',357.35,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0004','Nike Mercurial Vapor 14 Academy TF','img19.jpg',102.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0005','Nike Phantom GT2 Academy Dynamic Fit TF','img20.jpg',114.3,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0006','adidas X-Ghosted+ FG Shock Pink Screaming Orange','img21.jpg',149.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0007','adidas Predator Tango 18+ Clear Orange','img22.jpg',70.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0008','adidas X 19.1 Firm Ground Bright Cyan','img23.jpg',300.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0009','adidas Predator Tango 18+ White Black Coral','img24.jpg',85.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0010','adidas X Speedflow+ AG Cloud White Solar Red','img25.jpg',200.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0011','Puma FUTURE Z 1.3 FG/AG Soccer Cleats','img26.jpg',200.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0012','Puma FUTURE Z 3.3 TT Soccer Cleats','img27.jpg',123.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0013','Under Armour UA Spotlight Lux MC 2.0 Football Cleats','img28.jpg',130.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0014','Puma ULTRA 3.4 TT Soccer Cleats','img29.jpg',125.0,'FTB',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('F0015','Puma Future Z 1.2 FG/AG Soccer Cleats','img30.jpg',200.0,'FTB',20);

INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0001','Nike ZoomX Vaporfly Next% White Hyper Jade Flash Crimson','img31.jpg',203.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0002','Nike ZoomX Vaporfly Next% Bright Mango','img32.jpg',167.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0003','Nike ZoomX Vaporfly Next% Pink','img33.jpg',219.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0004','Nike ZoomX Vista Grind Volt (W)','img34.jpg',159.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0005','Nike ZoomX Vista Grind White Multi (W)','img35.jpg',157.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0006','adidas 4DFWD White Black','img36.jpg',190.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0007','adidas Futurecraft Footprint Allbirds White Non-Dyed','img37.jpg',105.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0008','adidas 4DFWD Tokyo','img38.jpg',165.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0009','adidas Alphaedge 4D White','img39.jpg',222.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0010','adidas ZX 1000 The Simpsons Flaming Moes','img40.jpg',105.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0011','Puma Deviate NITRO ELITE','img41.jpg',200.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0012','Puma Velocity NITRO 2','img42.jpg',120.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0013','Puma Magnify Nitro','img43.jpg',140.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0014','asics GEL-CUMULUS 24','img44.jpg',130.0,'RUN',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('R0015','asics GEL-NIMBUS 24','img45.jpg',160.0,'RUN',20);

INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0001','Nike Air Force 1 Low White','img46.jpg',104.0,'LIS',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0002','Nike Dunk Low Retro White Black Panda (2021)','img47.jpg',198.0,'LIS',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0003','Nike Dunk Low UNC (2021)','img48.jpg',373.0,'LIS',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0004','Nike Air Force 1 Low G-Dragon Peaceminusone Para-Noise 2.0','img49.jpg',400.0,'LIS',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0005','Nike Cortez Basic Forrest Gump (2019)','img50.jpg',149.0,'LIS',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0006','adidas Yeezy Boost 700 Wave Runner Solid Grey','img51.jpg',359.0,'LIS',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0007','adidas Campus 80s South Park Towelie','img52.jpg',100.0,'LIS',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0008','adidas NMD HU Pharrell NERD Chalk White','img53.jpg',176.0,'LIS',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0009','adidas Ultra Boost DNA LEGO Multi','img54.jpg',89.0,'LIS',20);
INSERT INTO shoes(shoes_id, name, img, price, category_id, amount) VALUES('L0010','adidas Yung-1 Cloud White','img55.jpg',84.0,'LIS',20);


