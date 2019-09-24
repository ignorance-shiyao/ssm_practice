-- 会员
drop table if exists ssm_practice.member;
CREATE TABLE ssm_practice.member
(
    id       int auto_increment PRIMARY KEY,
    name     VARCHAR(20),
    nickName VARCHAR(20),
    phoneNum VARCHAR(20),
    email    VARCHAR(20)
);
insert into ssm_practice.member (name, nickName, phoneNum, email)
values ('张三', '小三', '18888888888', 'zs@163.com');

select *
from ssm_practice.member;

-- 订单
drop table if exists ssm_practice.orders;
CREATE TABLE ssm_practice.orders
(
    id          int auto_increment PRIMARY KEY,
    orderNum    VARCHAR(20) NOT NULL UNIQUE,
    orderTime   timestamp,
    peopleCount INT,
    orderDesc   VARCHAR(500),
    payType     INT,
    orderStatus INT,
    productId   int,
    memberId    int,
    FOREIGN KEY (productId) REFERENCES ssm_practice.product (id),
    FOREIGN KEY (memberId) REFERENCES ssm_practice.member (id)
);

insert into ssm_practice.orders (orderNum, orderTime, peopleCount, orderDesc, payType, orderStatus, productId, memberId)
values ('12345', '20191005080000', 2, '没什么', 0, 1, 1, 1),
       ('54321', '20191005080000', 2, '没什么', 0, 1, 1, 1),
       ('67890', '20191005080000', 2, '没什么', 0, 1, 1, 1),
       ('98765', '20191005080000', 2, '没什么', 0, 1, 1, 1),
       ('11111', '20191005080000', 2, '没什么', 0, 1, 1, 1),
       ('22222', '20191005080000', 2, '没什么', 0, 1, 1, 1),
       ('33333', '20191005080000', 2, '没什么', 0, 1, 1, 1),
       ('44444', '20191005080000', 2, '没什么', 0, 1, 1, 1),
       ('55555', '20191005080000', 2, '没什么', 0, 1, 1, 1);


-- 旅客
drop table if exists ssm_practice.traveller;
CREATE TABLE ssm_practice.traveller
(
    id              int auto_increment PRIMARY KEY,
    name            VARCHAR(20),
    sex             VARCHAR(20),
    phoneNum        VARCHAR(20),
    credentialsType INT,
    credentialsNum  VARCHAR(50),
    travellerType   INT
);
insert into ssm_practice.traveller (name, sex, phoneNum, credentialsType, credentialsNum, travellerType)
values ('张龙', '男', '13333333333', 0, '123456789009876543', 0),
       ('张小龙', '男', '15555555555', 0, '987654321123456789', 1);


-- 订单与旅客中间表
drop table if exists ssm_practice.order_traveller;
CREATE TABLE ssm_practice.order_traveller
(
    orderId     int,
    travellerId int,
    PRIMARY KEY (orderId, travellerId),
    FOREIGN KEY (orderId) REFERENCES ssm_practice.orders (id),
    FOREIGN KEY (travellerId) REFERENCES ssm_practice.traveller (id)
);

insert into ssm_practice.order_traveller (orderid, travellerid)
values (1,1);

