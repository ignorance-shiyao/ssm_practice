-- 用户表
drop table if exists ssm_practice.users;
CREATE TABLE ssm_practice.users
(
    id       int auto_increment PRIMARY KEY,
    email    VARCHAR(50) UNIQUE NOT NULL,
    username VARCHAR(50),
    PASSWORD VARCHAR(50),
    phoneNum VARCHAR(20),
    STATUS   INT
);

-- 角色表
drop table if exists ssm_practice.role;
CREATE TABLE ssm_practice.role
(
    id       int auto_increment PRIMARY KEY,
    roleName VARCHAR(50),
    roleDesc VARCHAR(50)
);


-- 用户角色关联表
drop table if exists ssm_practice.users_role;
CREATE TABLE ssm_practice.users_role
(
    userId int,
    roleId int,
    PRIMARY KEY (userId, roleId),
    FOREIGN KEY (userId) REFERENCES ssm_practice.users (id),
    FOREIGN KEY (roleId) REFERENCES ssm_practice.role (id)
);

-- 资源权限表
drop table if exists ssm_practice.permission;
CREATE TABLE ssm_practice.permission
(
    id             int auto_increment PRIMARY KEY,
    permissionName VARCHAR(50),
    url            VARCHAR(50)
);

-- 角色权限关联表
drop table if exists ssm_practice.role_permission;
CREATE TABLE ssm_practice.role_permission
(
    permissionId int,
    roleId       int,
    PRIMARY KEY (permissionId, roleId),
    FOREIGN KEY (permissionId) REFERENCES ssm_practice.permission (id),
    FOREIGN KEY (roleId) REFERENCES ssm_practice.role (id)
);