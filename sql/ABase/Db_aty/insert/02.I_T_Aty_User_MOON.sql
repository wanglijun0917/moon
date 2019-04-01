-- auto create by SMD

set client_encoding = UTF8;
set search_path to db_aty;
commit;

truncate table T_Aty_User;
commit;

insert into T_Aty_User (C_ID, C_LoginID, C_Name, C_Password, C_Mail, C_IP, C_XMJP, C_CORP, C_DEPT, N_Valid, N_Order ) values ('-1'                               ,'admin'                            ,'超级管理员'                            ,'D41D8CD98F00B204E9800998ECF8427E' ,NULL,NULL,'admin'                            ,NULL,NULL,1         ,1         );



