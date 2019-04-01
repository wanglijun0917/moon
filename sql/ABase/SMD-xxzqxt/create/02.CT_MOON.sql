-- auto create by SMD

set client_encoding = UTF8;
set search_path to ;
commit;

-------------------------
-- 消息抓取系统-数据库配置
-------------------------

drop table if exists T_MF_DBCONFIG;
create table T_MF_DBCONFIG
(
    C_BH                  char(32)                             NOT NULL,    -- 编号
    C_DBNAME              varchar(300)                         NOT NULL,    -- 数据库名称
    C_DBTYPE              varchar(300)                         NOT NULL,    -- 数据库类型
    C_IPADDRESS           varchar(300)                         NOT NULL,    -- ip地址
    C_PORT                varchar(300)                         NOT NULL,    -- 端口
    C_DBUSER              varchar(300)                         NOT NULL,    -- 用户名
    C_PASSWORD            varchar(300)                         NOT NULL,    -- 密码
    C_STATE               varchar(300)                         NOT NULL,    -- 状态Y启用,N停用
constraint PK_MF_DBCONFIG primary key( C_BH )
);

 commit; 

set client_encoding = UTF8;
set search_path to ;
commit;

-------------------------
-- 消息抓取系统-系统配置
-------------------------

drop table if exists T_MF_SYSCONFIG;
create table T_MF_SYSCONFIG
(
    C_BH                  char(32)                             NOT NULL,    -- 编号
    C_DBBH                char(32)                             NOT NULL,    -- 数据库配置编号
    C_SYSNAME             varchar(300)                         NOT NULL,    -- 系统名称
    C_DBUSER              varchar(300)                         NOT NULL,    -- 用户名
    C_PASSWORD            varchar(300)                         NOT NULL     -- 密码
);

 commit; 

set client_encoding = UTF8;
set search_path to ;
commit;

-------------------------
-- 消息抓取系统-查询配置
-------------------------

drop table if exists T_MF_QUERY;
create table T_MF_QUERY
(
    C_BH                  char(32)                             NOT NULL,    -- 编号
    C_SYSBH               char(32)                             NOT NULL,    -- 系统编号
    C_TYPE                varchar(300)                         NULL,        -- 消息类型
    LC_SCRIPT             text                                 NULL,        -- 脚本内容
    N_FREQUENCY           int                                  NULL,        -- 更新频率
    DT_STARTTIME          timestamp                            NULL,        -- 开始时间
    C_STATE               varchar(300)                         NULL         -- 状态Y启用,N停用
);

 commit; 

set client_encoding = UTF8;
set search_path to ;
commit;

-------------------------
-- 消息抓取系统-接口配置
-------------------------

drop table if exists T_MF_INTERFACE;
create table T_MF_INTERFACE
(
    C_BH                  char(32)                             NOT NULL,    -- 编号
    C_SYSTEM              varchar(300)                         NULL,        -- 接口系统
    C_TYPE                varchar(300)                         NULL,        -- 接口类型
    C_INTERFACE           varchar(600)                         NULL,        -- 接口
    C_COMMENT             varchar(300)                         NULL         -- 说明
);

 commit; 

set client_encoding = UTF8;
set search_path to ;
commit;

-------------------------
-- 消息抓取系统-日志记录
-------------------------

drop table if exists T_MF_LOG;
create table T_MF_LOG
(
    C_BH                  char(32)                             NOT NULL,    -- 编号
    C_QUEBH               char(32)                             NOT NULL,    -- 查询编号
    C_MSGBH               varchar(300)                         NULL,        -- 消息编号
    C_MESSAGE             varchar(600)                         NULL,        -- 消息
    DT_UPDATETIME         timestamp                            NULL,        -- 更新时间
    DT_SUCCESSTIME        timestamp                            NULL,        -- 成功时间
    C_STATE               varchar(300)                         NULL         -- 状态Y成功,N失败
);

 commit; 

set client_encoding = UTF8;
set search_path to ;
commit;

-------------------------
-- 消息抓取系统-失败记录
-------------------------

drop table if exists T_MF_FAILURE;
create table T_MF_FAILURE
(
    C_BH                  char(32)                             NOT NULL,    -- 编号
    C_QUEBH               char(32)                             NOT NULL,    -- 查询编号
    C_MSGBH               varchar(300)                         NULL,        -- 消息编号
    C_MESSAGE             varchar(600)                         NULL         -- 消息
);

 commit; 

