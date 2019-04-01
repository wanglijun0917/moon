-- auto create by SMD

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 代码类型表
-------------------------

drop table if exists T_Aty_CodeType;
create table T_Aty_CodeType
(
    C_ID                  varchar(50)                          NOT NULL,    -- 代码类型编号
    C_Name                varchar(300)                         NOT NULL,    -- 代码类型名称
    N_Valid               int             default 1            NOT NULL,    -- 是否有效
    N_SFKWH               int             default 2            NOT NULL,    -- 是否可维护
constraint PK_Aty_CodeType primary key( C_ID )
);

 commit; 

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 代码表
-------------------------

drop table if exists T_Aty_Code;
create table T_Aty_Code
(
    C_PID                 varchar(50)     default '0'          NOT NULL,    -- 代码类型编号
    C_Code                varchar(50)                          NOT NULL,    -- 代码
    C_Name                varchar(300)                         NOT NULL,    -- 代码名称
    N_KWH                 int             default 2            NOT NULL,    -- 可否维护
    C_LevelInfo           varchar(300)                         NULL,        -- 分级信息
    N_Valid               int             default 1            NOT NULL,    -- 是否有效
    N_Order               int             default 1            NOT NULL,    -- 显示顺序
    C_Dmjp                varchar(300)                         NULL,        -- 代码简拼
constraint PK_Aty_Code primary key( C_PID,C_Code )
);

 commit; 

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 单位表
-------------------------

drop table if exists T_Aty_Corp;
create table T_Aty_Corp
(
    C_ID                  varchar(50)                          NOT NULL,    -- 标识
    C_Name                varchar(300)                         NOT NULL,    -- 单位名称
    C_PID                 varchar(300)                         NULL,        -- 父代码
    N_Level               int             default 4            NOT NULL,    -- 单位层级
    C_GBM                 varchar(300)                         NULL,        -- 国标码
    C_Alias               varchar(300)                         NULL,        -- 简称
    N_Valid               int             default 1            NOT NULL,    -- 是否有效
    N_Order               int             default 1            NOT NULL,    -- 显示顺序
constraint PK_Aty_Corp primary key( C_ID )
);

 commit; 

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 部门表
-------------------------

drop table if exists T_Aty_Dept;
create table T_Aty_Dept
(
    C_ID                  varchar(50)                          NOT NULL,    -- 标识
    C_Name                varchar(300)                         NOT NULL,    -- 部门名称
    C_PID                 varchar(300)                         NULL,        -- 父代码
    C_CORP                varchar(300)                         NULL,        -- 所属单位
    C_Alias               varchar(300)                         NULL,        -- 简称
    N_Valid               int             default 1            NOT NULL,    -- 是否有效
    N_Order               int             default 1            NOT NULL,    -- 显示顺序
constraint PK_Aty_Dept primary key( C_ID )
);

 commit; 

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 帐户表
-------------------------

drop table if exists T_Aty_User;
create table T_Aty_User
(
    C_ID                  varchar(50)                          NOT NULL,    -- 帐号ID
    C_LoginID             varchar(300)                         NOT NULL,    -- 登录标识
    C_Name                varchar(300)                         NOT NULL,    -- 姓名
    C_Password            varchar(32)     default 'D41D8CD98F00B204E9800998ECF8427E' NOT NULL,    -- 密码
    C_Mail                varchar(300)                         NULL,        -- 电子邮件
    C_IP                  varchar(300)                         NULL,        -- IP
    C_XMJP                varchar(300)                         NULL,        -- 姓名简拼
    C_CORP                varchar(300)                         NULL,        -- 所在单位
    C_DEPT                varchar(300)                         NULL,        -- 所在部门
    N_Valid               int             default 1            NOT NULL,    -- 是否有效
    N_Order               int             default 1            NOT NULL,    -- 显示顺序
constraint PK_Aty_User primary key( C_ID )
);

 commit; 

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 权限表
-------------------------

drop table if exists T_Aty_Right;
create table T_Aty_Right
(
    C_RightKey            varchar(150)                         NOT NULL,    -- 权限字
    C_Name                varchar(300)                         NOT NULL,    -- 权限名称
    C_Descript            varchar(300)                         NULL,        -- 描述
    N_Order               int                                  NULL,        -- 显示顺序
constraint PK_Aty_Right primary key( C_RightKey )
);

 commit; 

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 角色表
-------------------------

drop table if exists T_Aty_Role;
create table T_Aty_Role
(
    C_ID                  varchar(50)                          NOT NULL,    -- ID
    C_Name                varchar(300)                         NOT NULL,    -- 角色名称
    C_Descript            varchar(300)                         NULL,        -- 描述
    N_XTGY                int             default 2            NULL,        -- 系统固有
    N_Valid               int             default 1            NULL,        -- 是否有效
    N_Order               int             default 1            NULL,        -- 显示顺序
constraint PK_Aty_Role primary key( C_ID )
);

 commit; 

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 角色-权限关系表
-------------------------

drop table if exists T_Aty_Role_Right;
create table T_Aty_Role_Right
(
    C_ID                  varchar(32)                          NOT NULL,    -- ID
    C_RoleID              varchar(300)                         NOT NULL,    -- 角色ID
    C_RightKey            varchar(300)                         NOT NULL,    -- 权限字
constraint PK_Aty_Role_Right primary key( C_ID )
);

 commit; 

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 帐号-权限关系表
-------------------------

drop table if exists T_Aty_User_Right;
create table T_Aty_User_Right
(
    C_ID                  varchar(32)                          NOT NULL,    -- ID
    C_UserID              varchar(300)                         NOT NULL,    -- 帐号ID
    N_Type                int             default 1            NOT NULL,    -- 类型
    C_RoleID              varchar(300)                         NULL,        -- 角色ID
    C_RightKey            varchar(300)                         NULL,        -- 权限字
constraint PK_Aty_User_Right primary key( C_ID )
);

 commit; 

set client_encoding = UTF8;
set search_path to db_aty;
commit;

-------------------------
-- 图书表
-------------------------

drop table if exists T_Eg_Book;
create table T_Eg_Book
(
    C_ID                  varchar(32)                          NOT NULL,    -- uuid
    C_NAME                varchar(300)                         NOT NULL,    -- 图书名称
    C_AUTH                varchar(300)                         NULL,        -- 作者
    C_PUBLISHER           varchar(300)                         NULL,        -- 出版社
    F_PRICE               numeric(6, 2)                        NULL,        -- 单价
    D_PUBLISHER           timestamp                            NULL,        -- 出版日期
    D_BUY                 timestamp                            NULL,        -- 购买日期
    C_LIBRARYID           varchar(32)                          NOT NULL,    -- 图书室id
    C_ISBN                varchar(300)                         NULL,        -- ISBN
    C_VERSION             varchar(300)                         NULL,        -- 第几版
    I_PHOTO               bytea                                NULL,        -- 图书封面
    T_ABST                text                                 NULL,        -- 摘要
    N_VALID               int             default 1            NULL,        -- 是否有效
    T_INVALIDREASON       text                                 NULL,        -- 删除此图书的原因
    N_TYPE                int                                  NULL,        -- 类别
    I_ATTACH              bytea                                NULL,        -- 附件
    D_BOOKING             timestamp                            NULL,        -- 预订时间
    N_BOOKINGUSERID       numeric(17, 2)                       NULL,        -- 预订人
    N_LENDUSERID          numeric(17, 2)                       NULL,        -- 借出用户
    D_LEND                timestamp                            NULL,        -- 借出人
constraint PK_Eg_Book primary key( C_ID )
);

 commit; 

