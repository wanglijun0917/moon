-- auto create by SMD

set client_encoding = UTF8;
set search_path to db_aty;
commit;

truncate table T_Aty_CodeType;
commit;

insert into T_Aty_CodeType (C_ID, C_Name, N_Valid, N_SFKWH ) values ('-600'                             ,'图书类别'                             ,1         ,1         );



