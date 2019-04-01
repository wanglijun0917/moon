-- auto create by SMD

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Aty_CodeType                                  is '代码类型表';
comment on column T_Aty_CodeType.C_ID                             is '代码类型编号';
comment on column T_Aty_CodeType.C_Name                             is '代码类型名称';
comment on column T_Aty_CodeType.N_Valid                             is '是否有效';
comment on column T_Aty_CodeType.N_SFKWH                             is '是否可维护';

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Aty_Code                                  is '代码表';
comment on column T_Aty_Code.C_PID                             is '代码类型编号';
comment on column T_Aty_Code.C_Code                             is '代码';
comment on column T_Aty_Code.C_Name                             is '代码名称';
comment on column T_Aty_Code.N_KWH                             is '可否维护';
comment on column T_Aty_Code.C_LevelInfo                             is '分级信息';
comment on column T_Aty_Code.N_Valid                             is '是否有效';
comment on column T_Aty_Code.N_Order                             is '显示顺序';
comment on column T_Aty_Code.C_Dmjp                             is '代码简拼';

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Aty_Corp                                  is '单位表';
comment on column T_Aty_Corp.C_ID                             is '标识';
comment on column T_Aty_Corp.C_Name                             is '单位名称';
comment on column T_Aty_Corp.C_PID                             is '父代码';
comment on column T_Aty_Corp.N_Level                             is '单位层级';
comment on column T_Aty_Corp.C_GBM                             is '国标码';
comment on column T_Aty_Corp.C_Alias                             is '简称';
comment on column T_Aty_Corp.N_Valid                             is '是否有效';
comment on column T_Aty_Corp.N_Order                             is '显示顺序';

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Aty_Dept                                  is '部门表';
comment on column T_Aty_Dept.C_ID                             is '标识';
comment on column T_Aty_Dept.C_Name                             is '部门名称';
comment on column T_Aty_Dept.C_PID                             is '父代码';
comment on column T_Aty_Dept.C_CORP                             is '所属单位';
comment on column T_Aty_Dept.C_Alias                             is '简称';
comment on column T_Aty_Dept.N_Valid                             is '是否有效';
comment on column T_Aty_Dept.N_Order                             is '显示顺序';

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Aty_User                                  is '帐户表';
comment on column T_Aty_User.C_ID                             is '帐号ID';
comment on column T_Aty_User.C_LoginID                             is '登录标识';
comment on column T_Aty_User.C_Name                             is '姓名';
comment on column T_Aty_User.C_Password                             is '密码';
comment on column T_Aty_User.C_Mail                             is '电子邮件';
comment on column T_Aty_User.C_IP                             is 'IP';
comment on column T_Aty_User.C_XMJP                             is '姓名简拼';
comment on column T_Aty_User.C_CORP                             is '所在单位';
comment on column T_Aty_User.C_DEPT                             is '所在部门';
comment on column T_Aty_User.N_Valid                             is '是否有效';
comment on column T_Aty_User.N_Order                             is '显示顺序';

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Aty_Right                                  is '权限表';
comment on column T_Aty_Right.C_RightKey                             is '权限字';
comment on column T_Aty_Right.C_Name                             is '权限名称';
comment on column T_Aty_Right.C_Descript                             is '描述';
comment on column T_Aty_Right.N_Order                             is '显示顺序';

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Aty_Role                                  is '角色表';
comment on column T_Aty_Role.C_ID                             is 'ID';
comment on column T_Aty_Role.C_Name                             is '角色名称';
comment on column T_Aty_Role.C_Descript                             is '描述';
comment on column T_Aty_Role.N_XTGY                             is '系统固有';
comment on column T_Aty_Role.N_Valid                             is '是否有效';
comment on column T_Aty_Role.N_Order                             is '显示顺序';

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Aty_Role_Right                                  is '角色-权限关系表';
comment on column T_Aty_Role_Right.C_ID                             is 'ID';
comment on column T_Aty_Role_Right.C_RoleID                             is '角色ID';
comment on column T_Aty_Role_Right.C_RightKey                             is '权限字';

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Aty_User_Right                                  is '帐号-权限关系表';
comment on column T_Aty_User_Right.C_ID                             is 'ID';
comment on column T_Aty_User_Right.C_UserID                             is '帐号ID';
comment on column T_Aty_User_Right.N_Type                             is '类型';
comment on column T_Aty_User_Right.C_RoleID                             is '角色ID';
comment on column T_Aty_User_Right.C_RightKey                             is '权限字';

set client_encoding = UTF8;
set search_path to db_aty;
commit;

comment on table  T_Eg_Book                                  is '图书表';
comment on column T_Eg_Book.C_ID                             is 'uuid';
comment on column T_Eg_Book.C_NAME                             is '图书名称';
comment on column T_Eg_Book.C_AUTH                             is '作者';
comment on column T_Eg_Book.C_PUBLISHER                             is '出版社';
comment on column T_Eg_Book.F_PRICE                             is '单价';
comment on column T_Eg_Book.D_PUBLISHER                             is '出版日期';
comment on column T_Eg_Book.D_BUY                             is '购买日期';
comment on column T_Eg_Book.C_LIBRARYID                             is '图书室id';
comment on column T_Eg_Book.C_ISBN                             is 'ISBN';
comment on column T_Eg_Book.C_VERSION                             is '第几版';
comment on column T_Eg_Book.I_PHOTO                             is '图书封面';
comment on column T_Eg_Book.T_ABST                             is '摘要';
comment on column T_Eg_Book.N_VALID                             is '是否有效';
comment on column T_Eg_Book.T_INVALIDREASON                             is '删除此图书的原因';
comment on column T_Eg_Book.N_TYPE                             is '类别';
comment on column T_Eg_Book.I_ATTACH                             is '附件';
comment on column T_Eg_Book.D_BOOKING                             is '预订时间';
comment on column T_Eg_Book.N_BOOKINGUSERID                             is '预订人';
comment on column T_Eg_Book.N_LENDUSERID                             is '借出用户';
comment on column T_Eg_Book.D_LEND                             is '借出人';

