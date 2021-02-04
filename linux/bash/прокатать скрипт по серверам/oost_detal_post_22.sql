/*
update ost_detal22 set debet = replace(debet,chr(160),'');
update ost_detal22 set kredit = replace(kredit,chr(160),'');


update ost_detal22r set debet = replace(debet,chr(160),'');
update ost_detal22r set kredit = replace(kredit,chr(160),'');
*/
/*
alter table ost_detal_add alter column kind type int USING kind::integer;
*/
/*
select * into ost_detal_add_bb from ost_detal_add
union
select '50' as id, contragent,substring(dogovor,0,10) as dogovor,'2420003341' as kr_productiv, kredit, data_v_k, '01' as rem, debet, data_v_d,'2' as kind,'160021572' as partner_id  from ost_detal22r where contragent like '%НЕОПАК ГРУП%'
order by 1;
drop table ost_detal_add;
alter table ost_detal_add_bb rename to ost_detal_add;
delete from ost_detal22r where contragent like '%НЕОПАК ГРУП%';
*/
/*
update ost_detal_add set rem = '03' where contragent = 'Філія Оператор ГТС України АТ УкрТрансГаз' and dogovor = '030000343';
update ost_detal_add set rem = '05' where contragent = 'Філія Оператор ГТС України АТ УкрТрансГаз' and dogovor = '050617001';
update ost_detal_add set rem = '07' where contragent = 'Філія Оператор ГТС України АТ УкрТрансГаз' and dogovor = '070000063';
update ost_detal_add set rem = '04' where contragent = 'Філія Оператор ГТС України АТ УкрТрансГаз' and dogovor = '040000039';
*/

alter table ost_detal22 rename to bac_ost_detal22;
alter table ooost_detal22 rename to ost_detal22;

alter table ost_detal22r rename to bac_ost_detal22r;
alter table ooost_detal22r rename to ost_detal22r;

alter table ost_detal_add rename to bac_ost_detal_add;
alter table ooost_detal_add rename to ost_detal_add;

alter table ost_detal_post_22 rename to bac_ost_detal_post_22;
alter table ooost_detal_post_22 rename to ost_detal_post_22;
