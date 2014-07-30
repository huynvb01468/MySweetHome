USE master
GO
IF EXISTS (SELECT * FROM sys.databases WHERE name='Estate')
DROP DATABASE Estate
GO
CREATE DATABASE Estate
GO
USE Estate
GO
CREATE TABLE [User](
	[user_id] int identity primary key,
	username varchar(24) not null,
	[password] varchar(24) not null,
	[type] bit,
	fullname nvarchar(50),
	birthday date,
	gennder bit,
	email varchar(50),
	[money] float DEFAULT 0,
	[address] nvarchar(max)
)
CREATE TABLE type_Staff(
	type_staff_id int identity primary key,
	type_value nvarchar(50)
)
CREATE TABLE Staff(
	staff_id int identity primary key,
	username varchar(24) not null,
	[password] varchar(24) not null,
	type_staff_id int CONSTRAINT pk_StaffId FOREIGN KEY (type_staff_id) REFERENCES type_Staff(type_staff_id),
	fullname nvarchar(50),
	birthday date,
	gennder bit,
	email varchar(50)
)
CREATE TABLE FeedBack(
	feedback_id int identity primary key,
	[status] nvarchar(50),
	[description] nvarchar(max)
)
CREATE TABLE type_LandLot(
	type_landlot_id int identity primary key,
	type_value nvarchar(50), 
)
CREATE TABLE type_Demand(
	type_demand_id int identity primary key,
	type_value nvarchar(50), 
)
CREATE TABLE type_Post(
	type_post_id int identity primary key,
	type_value nvarchar(50)
)
CREATE TABLE City(
	City_id int identity primary kEy,
	CityName nvarchar(50)
)
CREATE TABLE LandLot(
	landlot_id int identity primary key,
	title nvarchar(200),
	price float,
	squareFootage float,
	City_id int CONSTRAINT pk_City FOREIGN KEY (City_id) REFERENCES City(City_id),
	[address] nvarchar(max),
	bedrooms int,
	bathrooms int,
	[image] varchar(100),
	[status] nvarchar(100),
	type_landlot_id int CONSTRAINT pk_typeLandLot FOREIGN KEY (type_landlot_id) REFERENCES type_LandLot(type_landlot_id)
)

CREATE TABLE Post(
	post_id int identity primary key,
	[user_id] int CONSTRAINT pk_UserIdP FOREIGN KEY ([user_id]) REFERENCES [User]([user_id]),
	landlot_id int CONSTRAINT pk_LandLoiIdP FOREIGN KEY (landlot_id) REFERENCES LandLot(landlot_id),
	staff_id int CONSTRAINT pk_StaffIdP FOREIGN KEY (staff_id) REFERENCES Staff(staff_id),
	type_post_id int CONSTRAINT pk_typePost FOREIGN KEY (type_post_id) REFERENCES type_Post(type_post_id),
	type_demand_id int CONSTRAINT pk_typeDemandPost FOREIGN KEY (type_demand_id) REFERENCES type_Demand(type_demand_id),
	[timeOut] int,
	[date] datetime,
	[status] nvarchar(100)
)
-- Code Test --

INSERT INTO [User] VALUES ('huynvb', '123123', 1, N'Nguyễn Văn Huy', '1994/12/12', 1, 'huynv_b01468@fpt.aptech.ac.vn', 200,N'Hải Hậu - Nam Định'),
						  ('user', '123123', 1, N'User', '1994/12/12', 1, 'huynvb01468mkl@gmail.com', 6969, N'Nguyên Xá - Từ Liêm'),
						  ('thubtx', '123123', 1, N'Bùi Thị Xuân Thu', '1994/01/01', 0, 'thubtx@vnext.vn', default,null),
						  ('haont', '123123', 0, N'Ngô Tiến Hào', '1994/01/01', 0, 'thubtx@vnext.vn', default, null),
						  ('longnv', '123123', 0, N'Nguyễn Việt Long', '1994/01/01', 0, 'thubtx@vnext.vn', default, null)
INSERT INTO type_Staff VALUES ('Admin'),('Caseworker buy'),('Caseworker sale'), ('Caseworker for rent')
INSERT INTO Staff VALUES ('huynvb', '123123', 3, N'Nguyễn Văn Huy', '1994/12/14', 1, 'huynv@vnext.vn'),
						 ('thubtx', '123123', 3, N'Bùi Thị Xuân Thu', '1994/01/01', 2, 'thubtx@vnext.vn'),
						 ('haont', '123123', 2, N'Ngô Tiến Hào', '1994/11/15', 1, 'haont@vnext.vn'),
						 ('longnv', '123123', 2, N'Nguyễn Việt Long', '1994/02/22', 1, 'longnv@fpt.vn')
INSERT INTO type_LandLot VALUES (N'Commercial'), (N'Residential Land'), (N'Villa'), (N'Townhouse'), (N'Rental')
INSERT INTO type_Post VALUES (N'Vip News'), (N'Normal News')
INSERT INTO type_Demand VALUES (N'Muốn Bán'), (N'Cho Thuê')
INSERT INTO City VALUES (N'Hà Nội'), (N'Hải Phòng'), (N'Nam Định'), (N'Hà Tây'), (N'Phú Thọ'),(N'Quảng Ninh'), (N'Vĩnh Phúc')
INSERT INTO LandLot VALUES (N'Keangnam', 3000000, 120, 1, N'Keangnam', 3, 5, 'page2_img1.jpg', N'Sold',2),
						   (N'Condo Hoàn Kiếm lakeside', 11000000, 200, 1, N'Hoàn Kiếm', 5, 6, 'page2_img2.jpg', N'Sold', 1),
						   (N'Villa in city center' ,500000, 120, 2, N'Hải Hậu', 6, 6,  'page2_img3.jpg', N'Selling', 4),
						   (N'Villa in city center' ,500000, 120, 1, N'Hải Hậu', 6, 6,  'page2_img4.jpg', N'Selling', 4)
INSERT INTO Post VALUES ( 2, 1, 3, 1, 1, 3,'2012/02/12', N'Done'),
						( 2, 2, 2, 2, 2, 7, '2014/07/08',N'Waiting'),
						( 3, 3, 3, 1, 1, 30,'2013/04/12', N'Done')
--DELETE [User] WHERE user_id=1
SELECT * FROM [User]
SELECT * FROM Staff
SELECT * FROM type_Staff
SELECT * FROM LandLot
SELECT * FROM type_LandLot
SELECT * FROM type_Post
select * from Post
select top 5 * from LandLot inner join Post on LandLot.landlot_id = Post.landlot_id inner join type_Post on Post.type_post_id = type_Post.type_post_id  where Post.date <= GETDATE() and type_Post.type_value = 'Normal News' order by Post.date desc
select City.CityName, * from LandLot inner join City on LandLot.City_id = City.City_id