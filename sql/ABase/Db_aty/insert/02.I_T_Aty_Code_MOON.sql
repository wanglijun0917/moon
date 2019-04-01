-- auto create by SMD

set client_encoding = UTF8;
set search_path to db_aty;
commit;

truncate table T_Aty_Code;
commit;

insert into T_Aty_Code (C_PID, C_Code, C_Name, N_KWH, C_Level_Info, N_Valid, N_Order, C_Dmjp ) values ('-600'                             ,'1'                                ,'科技'                               ,1         ,NULL,1         ,1         ,NULL);

insert into T_Aty_Code (C_PID, C_Code, C_Name, N_KWH, C_Level_Info, N_Valid, N_Order, C_Dmjp ) values ('-600'                             ,'2'                                ,'文学'                               ,1         ,NULL,1         ,2         ,NULL);



