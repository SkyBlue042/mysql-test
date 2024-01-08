# 查询餐厅所有信息以及餐厅中所包含的菜品信息
select *
from tb_restaurant as r
         left join tb_restaurant_dish as rd on r.id = rd.tb_restaurant_id
         left join tb_dish as d on rd.tb_dish_id = d.id;

# 子查询
# 查询所有菜品价格小于平均价格的菜品
select *
from tb_dish as d
         left join tb_restaurant_dish as rd on d.id = rd.tb_dish_id
where rd.price < (select avg(price) from tb_restaurant_dish);


select *
from tb_restaurant_dish
where price between 10 and 20;


select tb_restaurant_id from tb_restaurant_dish where price between 10 and 20;


select *
from tb_restaurant r
         left join (select * from tb_restaurant_dish where price between 10 and 20) as new
                   on r.id = new.tb_restaurant_id
         order by new.price;
