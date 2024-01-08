select d.id,
       d.dish_name,
       d.type,
       rd.price,
       r.name,
       r.loc
from tb_dish d,
     tb_restaurant_dish rd,
     tb_restaurant r
where d.id = rd.tb_dish_id
  and r.id = rd.tb_restaurant_id;
#     group by  rd.price

select job, entrydate
from tb_emp
where name = '张无忌';
select *
from tb_emp
where (job, entrydate) = (select job, entrydate from tb_emp where name = '张无忌');

select *
from tb_emp
where id between 10 and 50;

create table tb_job
(
    id       int(10) primary key auto_increment,
    job_name varchar(100)
);

insert into tb_job
values (null, '班主任'),
       (null, '讲师'),
       (null, '学工主管'),
       (null, '教研主管');

delete
from tb_job
where id in (5, 6, 7, 8);

select *
from tb_job as j,
     (select * from tb_emp where name in ('韦一笑', '张无忌')) as t1
where j.id = t1.job;