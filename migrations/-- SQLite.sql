-- SQLite
select * from car_make;
select * from car_make where id = 1;
select * from car_model where make_id = 1;

---join the car_make with the car_model table

select name, model_name, price from car_make 
join car_model
on car_make.id = car_model.make_id;