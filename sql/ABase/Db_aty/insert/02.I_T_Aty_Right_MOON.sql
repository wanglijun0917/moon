-- auto create by SMD

set client_encoding = UTF8;
set search_path to db_aty;
commit;

truncate table T_Aty_Right;
commit;

insert into T_Aty_Right (C_RightKey, C_Name, C_Descript, N_Order ) values ('artery'                           ,'系统权限'                             ,NULL,1         );

insert into T_Aty_Right (C_RightKey, C_Name, C_Descript, N_Order ) values ('artery.console'                   ,'控制台管理'                            ,NULL,2         );



