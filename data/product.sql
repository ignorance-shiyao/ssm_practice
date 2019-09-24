create database if not exists ssm_practice;

drop table if exists ssm_practice.product;
CREATE TABLE ssm_practice.product
(
    id            int auto_increment primary key,
    productNum    VARCHAR(50) NOT NULL,
    productName   VARCHAR(50),
    cityName      VARCHAR(50),
    DepartureTime timestamp,
    productPrice  double,
    productDesc   varchar(500),
    productStatus INT
);

insert into ssm_practice.product(productNum, productName, cityName, departureTime, productPrice,
                                 productDesc, productStatus)
values ('practice_004', '苏州三日游', '苏州', '20191010090000', 1000.0, '体验相当不错', 1),
       ('practice_002', '北京三日游', '北京', '20191005080000', 1200.0, '不错的旅行', 1),
       ('practice_003', '上海五日游', '上海', '20191005083000', 1800.0, '魔都我来了', 0),
       ('practice_001', '北京三日游', '北京', '20191005093000', 1200.0, '不错的旅行', 1);

select *
from ssm_practice.product;

# show variables like '%char%';