select d.id,
       d.dish_name,
       d.type,
       rd.price,
       r.name,
       r.loc
from tb_restaurant as r
         inner join
     tb_restaurant_dish as rd
     on
         r.id = rd.tb_restaurant_id
         inner join tb_dish as d
                    on
                        rd.tb_dish_id = d.id