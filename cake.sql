SET NAMES utf8;
#DROP DATABASE IF EXISTS weiduomei;
#CREATE DATABASE IF NOT EXISTS weiduomei CHARSET=utf8;

#USE weiduomei;

#蛋糕类别表#
#类别编号、类别名称、介绍#
CREATE TABLE IF NOT EXISTS cake_type(
    tid INT PRIMARY KEY,
    tname VARCHAR(20),
    desct VARCHAR(100)
)DEFAULT CHARSET=utf8;
INSERT INTO cake_type VALUES(1,'慕斯蛋糕','好蛋糕');
INSERT INTO cake_type VALUES(2,'奶油蛋糕','好蛋糕');
INSERT INTO cake_type VALUES(3,'法式蛋糕','好蛋糕');
INSERT INTO cake_type VALUES(4,'乳酪蛋糕慕','好蛋糕');
SELECT * FROM cake_type;

#蛋糕信息表#
#蛋糕编号、蛋糕名称、蛋糕图片、价格、尺寸、喜欢次数、类别编号#
CREATE TABLE IF NOT EXISTS cake(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    cname VARCHAR(20),
    pic VARCHAR(50),
    info VARCHAR(50),
    price DOUBLE(10,2),
    size INT,
    wlike INT,
    tid INT
)DEFAULT CHARSET=utf8;
INSERT INTO cake VALUES(NULL,'慕斯蛋糕一','01.jpg','好吃',205.00,3,1000,1);
INSERT INTO cake VALUES(NULL,'慕斯蛋糕二','02.jpg','好吃',206.00,2,1100,1);
INSERT INTO cake VALUES(NULL,'慕斯蛋糕三','03.jpg','好吃',207.00,3,1300,1);
INSERT INTO cake VALUES(NULL,'奶油蛋糕一','04.jpg','好吃',208.00,3,1200,2);
INSERT INTO cake VALUES(NULL,'奶油蛋糕二','05.jpg','好吃',209.00,2,1040,2);
INSERT INTO cake VALUES(NULL,'奶油蛋糕三','06.jpg','好吃',210.00,3,1060,2);
INSERT INTO cake VALUES(NULL,'法式蛋糕一','07.jpg','好吃',108.00,3,1070,3);
INSERT INTO cake VALUES(NULL,'法式蛋糕二','08.jpg','好吃',109.00,2,1020,3);
INSERT INTO cake VALUES(NULL,'法式蛋糕三','09.jpg','好吃',110.00,3,1030,3);
INSERT INTO cake VALUES(NULL,'乳酪蛋糕三','01.jpg','好吃',160.00,3,1090,4);
INSERT INTO cake VALUES(NULL,'乳酪蛋糕三','02.jpg','好吃',170.00,3,1110,4);
INSERT INTO cake VALUES(NULL,'乳酪蛋糕三','03.jpg','好吃',180.00,3,1150,4);

SELECT * FROM cake;