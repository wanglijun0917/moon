-- auto create by SMD

set client_encoding = UTF8;
set search_path to 对应数据库：;
commit;

comment on table                                    is '----消息抓取系统';

set client_encoding = UTF8;
set search_path to ;
commit;

comment on table  T_MF_DBCONFIG                                  is '消息抓取系统-数据库配置';
comment on column T_MF_DBCONFIG.C_BH                             is '编号';
comment on column T_MF_DBCONFIG.C_DBNAME                             is '数据库名称';
comment on column T_MF_DBCONFIG.C_DBTYPE                             is '数据库类型';
comment on column T_MF_DBCONFIG.C_IPADDRESS                             is 'ip地址';
comment on column T_MF_DBCONFIG.C_PORT                             is '端口';
comment on column T_MF_DBCONFIG.C_DBUSER                             is '用户名';
comment on column T_MF_DBCONFIG.C_PASSWORD                             is '密码';
comment on column T_MF_DBCONFIG.C_STATE                             is '状态Y启用,N停用';

set client_encoding = UTF8;
set search_path to ;
commit;

comment on table  T_MF_SYSCONFIG                                  is '消息抓取系统-系统配置';
comment on column T_MF_SYSCONFIG.C_BH                             is '编号';
comment on column T_MF_SYSCONFIG.C_DBBH                             is '数据库配置编号';
comment on column T_MF_SYSCONFIG.C_SYSNAME                             is '系统名称';
comment on column T_MF_SYSCONFIG.C_DBUSER                             is '用户名';
comment on column T_MF_SYSCONFIG.C_PASSWORD                             is '密码';

set client_encoding = UTF8;
set search_path to ;
commit;

comment on table  T_MF_QUERY                                  is '消息抓取系统-查询配置';
comment on column T_MF_QUERY.C_BH                             is '编号';
comment on column T_MF_QUERY.C_SYSBH                             is '系统编号';
comment on column T_MF_QUERY.C_TYPE                             is '消息类型';
comment on column T_MF_QUERY.LC_SCRIPT                             is '脚本内容';
comment on column T_MF_QUERY.N_FREQUENCY                             is '更新频率';
comment on column T_MF_QUERY.DT_STARTTIME                             is '开始时间';
comment on column T_MF_QUERY.C_STATE                             is '状态Y启用,N停用';

set client_encoding = UTF8;
set search_path to ;
commit;

comment on table  T_MF_INTERFACE                                  is '消息抓取系统-接口配置';
comment on column T_MF_INTERFACE.C_BH                             is '编号';
comment on column T_MF_INTERFACE.C_SYSTEM                             is '接口系统';
comment on column T_MF_INTERFACE.C_TYPE                             is '接口类型';
comment on column T_MF_INTERFACE.C_INTERFACE                             is '接口';
comment on column T_MF_INTERFACE.C_COMMENT                             is '说明';

set client_encoding = UTF8;
set search_path to ;
commit;

comment on table  T_MF_LOG                                  is '消息抓取系统-日志记录';
comment on column T_MF_LOG.C_BH                             is '编号';
comment on column T_MF_LOG.C_QUEBH                             is '查询编号';
comment on column T_MF_LOG.C_MSGBH                             is '消息编号';
comment on column T_MF_LOG.C_MESSAGE                             is '消息';
comment on column T_MF_LOG.DT_UPDATETIME                             is '更新时间';
comment on column T_MF_LOG.DT_SUCCESSTIME                             is '成功时间';
comment on column T_MF_LOG.C_STATE                             is '状态Y成功,N失败';

set client_encoding = UTF8;
set search_path to ;
commit;

comment on table  T_MF_FAILURE                                  is '消息抓取系统-失败记录';
comment on column T_MF_FAILURE.C_BH                             is '编号';
comment on column T_MF_FAILURE.C_QUEBH                             is '查询编号';
comment on column T_MF_FAILURE.C_MSGBH                             is '消息编号';
comment on column T_MF_FAILURE.C_MESSAGE                             is '消息';

