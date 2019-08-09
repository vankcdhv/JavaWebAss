CREATE DATABASE ShoeStore
GO
USE ShoeStore
GO
--------------------------- BEGIN CREATE TABLE ----------------------------------
CREATE TABLE Account
(
	UserName NVARCHAR(30) NOT NULL,
	[Password] NVARCHAR(30) NOT NULL,
	DisplayName NVARCHAR(50) NOT NULL,
	Email NVARCHAR(60) NOT NULL UNIQUE,
	Blocked bit not null default 0,
	Type INT DEFAULT 0,
	CONSTRAINT PK_Account PRIMARY KEY(username),
)	
GO

CREATE TABLE Categories
(
	ID VARCHAR(10) NOT NULL,
	Name NVARCHAR(50) NOT NULL UNIQUE,
	Describe NVARCHAR(1000),
	CONSTRAINT PK_Categories PRIMARY KEY(ID)
)
GO

CREATE TABLE Products
(
	ID VARCHAR(10),
    [name] NVARCHAR(30) ,
    cat_ID VARCHAR(10),
    [image] VARCHAR(100),
    price FLOAT,
    quantity INT,
    describe NVARCHAR(200),
    status NVARCHAR(20),
    adddate DATETIME, 
	CONSTRAINT PK_Products PRIMARY KEY(ID),
	CONSTRAINT FK_Products_Cat FOREIGN KEY(cat_ID) REFERENCES dbo.Categories(ID),
)

CREATE TABLE Bill
(
	ID INT IDENTITY,
	Cus_Name NVARCHAR(50),
	CreateDate DATE NOT NULL DEFAULT GETDATE(),
	Total FLOAT not null default 0,
	CONSTRAINT PK_Bill PRIMARY KEY(ID)
)
GO

CREATE TABLE BillLine
(
	ID INT IDENTITY,
	IDBill INT NOT NULL,
	IDProduct VARCHAR(10) NOT NULL,
	Count INT NOT NULL DEFAULT 0,
	CONSTRAINT FK_BL_Bill FOREIGN KEY(IDBill) REFERENCES dbo.Bill(ID),
	CONSTRAINT FK_BL_Product FOREIGN KEY(IDProduct) REFERENCES dbo.Products(ID),	
)
GO

------------------------------ END CREATE TABLE -------------------------------------------
------------------------------ BEGIN INSERT DATA ------------------------------------------
INSERT dbo.Account
(
    username,
    password,
	DisplayName,
    email,
	Blocked,
    type
)
VALUES
(   N'van', -- username - nvarchar(50)
    N'van', -- password - nvarchar(50)
	N'Lê Thiện Văn', -- Display name
    N'vanlthe130820@fpt.edu.vn', -- email - nvarchar(50)
	0,
    0   -- type - int
)
INSERT dbo.Account
(
    username,
    password,
	DisplayName,
    email,
	Blocked,
    type
)
VALUES
(   N'dung', -- username - nvarchar(50)
    N'dung', -- password - nvarchar(50)
	N'Hà Việt Dũng',
    N'dunghvhe130001@fpt.edu.vn', -- email - nvarchar(50)
	0,
    0   -- type - int
    )
INSERT dbo.Account
(
    username,
    password,
	DisplayName,
    email,
	Blocked,
    type
)
VALUES
(   N'nhat', -- username - nvarchar(50)
    N'nhat', -- password - nvarchar(50)
	N'Nguyễn Khánh Nhật',
    N'nhatnkhe130002@fpt.edu.vn', -- email - nvarchar(50)
	0,
    0   -- type - int
    )
INSERT dbo.Account
(
    username,
    password,
	DisplayName,
    email,
	Blocked,
    type
)
VALUES
(   N'hamy', -- username - nvarchar(50)
    N'hamy', -- password - nvarchar(50)
	N'Trịnh Thị Hà My',
    N'mytthhe130003@fpt.edu.vn', -- email - nvarchar(50)
	0,
    0   -- type - int
)
INSERT dbo.Account
(
    UserName,
    Password,
    DisplayName,
    Email,
	Blocked,
    Type
)
VALUES
(   N'staff', -- UserName - nvarchar(30)
    N'staff', -- Password - nvarchar(30)
    N'Staff', -- DisplayName - nvarchar(50)
    N'', -- Email - nvarchar(60)
	0,
    1    -- Type - int
    )
INSERT dbo.Account
(
    UserName,
    Password,
    DisplayName,
    Email,
	Blocked,
    Type
)
VALUES
(   N'customer', -- UserName - nvarchar(30)
    N'123', -- Password - nvarchar(30)
    N'Customer', -- DisplayName - nvarchar(50)
    N'customer', -- Email - nvarchar(60)
	0,
    3    -- Type - int
    )

insert into Categories values('GCG',N'Giày cao gót',N'Dáng thon gọn, phù hợp để đi làm')
insert into Categories values('SNK','Sneaker',N'Dáng thể thao, trẻ trung, phù để đi chơi')
insert into Categories values('SD','Sandal',N'Dáng đơn giản, thoải mái, phù hợp đi học')
insert into Categories values('GT','Giày tây',N'Dáng sang trọng lịch sự, phù hợp đi làm')
insert into Categories values('TTN',N'Thời Trang Nam',N'Dáng đơn giản, thoải mái, phù hợp đi học')
insert into Categories values('SPM',N'Sản phẩm mới',N'Dáng đơn giản, thoải mái, phù hợp đi học')
insert into Categories values('PKG',N'Phụ kiện giày',N'Sẵn sàng để tô điểm lại sản phẩm')

insert into products values('SQC',N'Sandal quai chéo','SD','SD1.jpg',100,35,N'có độ đàn hồi cao và khả năng đệm, bám, giảm chấn cực tốt mang lại cảm giác êm ái, dễ chịu','còn hàng','5/25/2019')
insert into products values('SX',N'Sandal xỏ ngón','SD','SD2.jpg',200,74,N'Lót kép êm như nằm đệm, lên chân siêu yêu','còn hàng','05/28/2019')
insert into products values('S3',N'Sandal 3 quai','SD','SD3.jpg',300,12,N'thiết kế trẻ trung, sang trọng và đều hướng đến sự bền bỉ chất lượng ','còn hàng','05/08/2019')
insert into products values('SHN',N'Sandal hở gót','SD','SD4.jpg',400,35,N'Gót vuông và đế giày có rãnh chống trượt gíup bước chân thoải mái, tự tin','còn hàng','5/20/2019')
insert into products values('SHT',N'Sandal họa tiết','SD','SD5.jpg',500,10,N'Thiết kế trẻ trung, cá tính với phần quai trong đầy màu sắc từ hoạ tiết Mondrian','còn hàng','6/1/2019')
insert into products values('SCB',N'Sandal chiến binh','SD','SD6.jpg',199,30,N'Kiểu dáng chiến binh cách điệu, thời trang','còn hàng','6/2/2019')
insert into products values('SGN',N'Sandal gót nhọn','SD','SD7.jpg',300,15,N'Thiết kế cao gót quai nàng với dáng gót mảnh tôn dáng thon chân dài','còn hàng','6/15/2019')
insert into products values('SSS','Sneaker Super Star','SNK','SNK1.jpg',400,50,N'Kiểu dáng hiện đại, êm ái, phù hợp mọi lứa tuổi','còn hàng','06/24/2019')
insert into products values('VOS','Van Old Skool','SNK','SNK2.jpg',500,20,N'Với chất liệu da lộn mài mix vải, cùng với phối màu đen - trắng siêu dễ phối','còn hàng','06/20/2019')
insert into products values('BTS','Balengacia Triple S','SNK','SNK3.jpg',600,15,N'thiết kế mang đậm phong cách của những thập niên 80 đôi giày này đã làm cho giới trẻ có những trải nghiệm mới.','còn hàng','06/15/2019')
insert into products values('AAIT','Adidas Alphabounce Instinct Trainers','SNK','SNK4.jpg',1600,12,N'kiểu dáng cấu tạo và thiết kế mới đảm bảo phần đế ở gót chân được tăng sự nâng cỡ bởi công nghệ BOUNCE','còn hàng','06/21/2019')
insert into products values('NU','Nike Uptempo','SNK','SNK5.jpg',1300,9,N'Thân da thời trang cao cấp cách điệu trong thiết kế năng động độc đáo mới','còn hàng','06/28/2019')
insert into products values('NBC','New Balance Classic ','SNK','SNK6.jpg',1400,12,N'kiểu dáng cấu tạo và thiết kế mới đảm bảo phần đế ở gót chân được tăng sự nâng cỡ bởi công nghệ BOUNCE','còn hàng','06/21/2019')
insert into products values('KSU','Kappa Sneaker Unisex','SNK','SNK7.jpg',1550,30,N'Chất liệu Action Leather cao cấp, bền, đẹp','còn hàng','06/10/2019')
insert into products values('EUS','Ecko UNLTD Sneaker ','SNK','SNK8.jpg',1600,20,N'kiểu dáng cấu tạo và thiết kế mới đảm bảo phần đế ở gót chân được tăng sự nâng cỡ bởi công nghệ BOUNCE','còn hàng','06/21/2019')
insert into products values('PSK',N'Pump So Kate','GCG','GCG1.jpg',7000,10,N'Dựa trên thiết kế cổ điển ban đầu nhưng có nét chấm phá một chút ở màu sắc và độ cao từ bộ sưu tập So Kate với những điểm nhấn ấn tượng','còn hàng','05/28/2019')
insert into products values('RR',N'Ron Ron 100mm','GCG','GCG2.jpg',8000,20,N'Thiết kế mang tính biểu tượng nhất mọi thời đại, từ cấu trúc, đến từng chi tiết điểm xuyến','còn hàng','05/26/2019')
insert into products values('PG',N'Piggale 100mm','GCG','GCG3.jpg',9000,0,N'khiến người phụ nữ trở nên quyến rũ với đôi chân dài bất tận','hết hàng','05/05/2019')
insert into products values('BP',N'BB Pump','GCG','GCG4.jpg',17800,11,N'Đôi giày được phủ nhung mềm mại, có thiết kế mũi nhọn thuôn dài, khiến đôi chân trông mảnh mai và thon gọn hơn','còn hàng','08/05/2019')
insert into products values('SLT',N'Saint Laurent Tribute 135','GCG','GCG5.jpg',13000,11,N'Thiết kế thời thượng,  rất nhiều minh tinh hạng A đã diện nó để dạo phố cho tới bước trên thảm đỏ','còn hàng','05/20/2019')
insert into products values('GPL',N'Gucci Patent Leather Mid-Heel Pump With Bee','GCG','GCG6.jpg',17800,18,N'Đôi giày được phủ nhung mềm mại, có thiết kế mũi nhọn thuôn dài, khiến đôi chân trông mảnh mai và thon gọn hơn','còn hàng','08/05/2019')
insert into products values('DJA',N'Dior J’Adior Slingback In Black Technical Fabric','GCG','GCG7.jpg',22800,11,N'Đôi giày được phủ nhung mềm mại, có thiết kế mũi nhọn thuôn dài, khiến đôi chân trông mảnh mai và thon gọn hơn','còn hàng','05/05/2019')
insert into products values('DG',N'Dây giày các loại','PKG','PKG1.jpg',10,100,N'Dây giày các loại đủ màu,đủ kích thước','còn hàng','01/05/2019')
insert into products values('CS',N'Combo Sticker dán dép','PKG','PKG2.jpg',10,150,N'Những chiếc sticker/jibbitz xinh xắn chắc chắn sẽ làm nổi bật đôi dép sục cuả bạn','còn hàng','02/05/2019')
insert into products values('MKHG',N'Móc khóa hình giày','PKG','PKG3.jpg',10,130,N'Móc khóa hìnhgiày cá tính, nổi bật','còn hàng','09/05/2019')
insert into products values('DLTCC',N'Đệm lót tăng chiều cao','PKG','PKG4.jpg',28,90,N'Dễ dàng tăng chiều cao của bạn','còn hàng','10/05/2019')
insert into products values('XG',N'Xi giày','PKG','PKG5.jpg',50,70,N'Đánh bóng lại sự sang trọng cho đôi giày của bạn','còn hàng','07/05/2019')
insert into products values('TCS1',N'Tất công sở nam','PKG','PKG6.jpg',8,70,N'Vận động thoải mái nhẹ nhàng, chất liệu thấm hút mồ hôi tốt ','còn hàng','05/05/2019')
insert into products values('TCS2',N'Tất công sở nữ','PKG','PKG7.jpg',15,70,N'Vận động thoải mái nhẹ nhàng, chất liệu thấm hút mồ hôi tốt ','còn hàng','05/05/2019')
insert into products values('GTN1136',N'Giầy Tây Nam 1136-XA','GT','GT1.jpg',1050,70,N'Xuất xứ từ Việt Nam, phù hợp với chính con người Việt Nam','còn hàng','01/05/2019')
insert into products values('GBD',N'Giày buộc dây Sanvado','GT','GT2.jpg',870,60,N'Với thiết kế trẻ trung, năng động cùng đường viền mũi nổi bật','còn hàng','05/05/2019')
insert into products values('JBD',N'James Blanc đai khóa màu đen','GT','GT3.jpg',1500,26,N'Chất liệu da trơn cao cấp bền đẹp cùng thiết kế chống trơn trượt hiệu quả, cho bạn tự tin di chuyển','còn hàng','12/05/2019')
insert into products values('ZTL',N'Giày cổ lửng Zatoli','GT','GT4.jpg',799,19,N'Thiết kế kiểu Chelsea boots độc đáo, mới lạ','còn hàng','10/05/2019')
insert into products values('JBX',N'James Blanc James Blanc da lộn màu xanh','GT','GT5.jpg',900,13,N'Độc và lạ mắt, thời trang và phong cách','còn hàng','08/05/2019')





------------------------------ END INSERT DATA --------------------------------------------
------------------------------ BEGIN QUERY ------------------------------------------------
SELECT * FROM dbo.Account
SELECT * FROM dbo.Categories
SELECT * FROM dbo.Products
