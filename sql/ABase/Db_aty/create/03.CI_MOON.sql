-- auto create by SMD

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_Code_Code;
create  index I_Aty_Code_Code on T_Aty_Code (C_Code);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_Right_RightKey;
create  index I_Aty_Right_RightKey on T_Aty_Right (C_RightKey);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_User_LoginID;
create  index I_Aty_User_LoginID on T_Aty_User (C_LoginID);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_User_CORP;
create  index I_Aty_User_CORP on T_Aty_User (C_CORP);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_User_DEPT;
create  index I_Aty_User_DEPT on T_Aty_User (C_DEPT);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_User_Order;
create  index I_Aty_User_Order on T_Aty_User (N_Order);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_Dept_CORP;
create  index I_Aty_Dept_CORP on T_Aty_Dept (C_CORP);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_Dept_Order;
create  index I_Aty_Dept_Order on T_Aty_Dept (N_Order);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_Role_Right_RoleID;
create  index I_Aty_Role_Right_RoleID on T_Aty_Role_Right (C_RoleID);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_Role_Right_RightKey;
create  index I_Aty_Role_Right_RightKey on T_Aty_Role_Right (C_RightKey);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_User_Right_UserID;
create  index I_Aty_User_Right_UserID on T_Aty_User_Right (C_UserID);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_User_Right_RoleID;
create  index I_Aty_User_Right_RoleID on T_Aty_User_Right (C_RoleID);
commit;

set client_encoding = UTF8;
set search_path to db_aty;
commit;

drop index if exists I_Aty_User_Right_RightKey;
create  index I_Aty_User_Right_RightKey on T_Aty_User_Right (C_RightKey);
commit;

