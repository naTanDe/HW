1. Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd

select model, speed, hd
from PC
where price < 500;

2. Найдите производителей принтеров. Вывести: maker

select distinct maker
from product
where type = 'Printer';

3. Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

select model, ram, screen
from Laptop
where price > 1000;

4. Найдите все записи таблицы Printer для цветных принтеров.

Select * from Printer
where color = 'y';

5. Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

select model, speed, hd
from PC
where (cd = '12x' or cd = '24x') and price < 600;

6. Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. 
Вывод: производитель, скорость.

select distinct  product.maker, laptop.speed
from Laptop
inner join product on laptop.model = product.model
where hd >= 10;

7. Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

select Product.model, PC.price
from Product
inner join PC on PC.model=Product.model where maker = 'B'
union
select Product.model, Laptop.price
from Product
inner join Laptop on Laptop.model=Product.model where maker = 'B'
union 
select Product.model, Printer.price
from Product
inner join Printer on Printer.model=Product.model where maker = 'B';

8. Найдите производителя, выпускающего ПК, но не ПК-блокноты.

select maker
from Product
where type = 'PC'
except 
select maker
from Product
where type = 'Laptop';

9. Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

select distinct maker
from product
inner join PC on pc.model=product.model
where speed >= 450;

10. Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

select model, price
from Printer
where price = (select max(price)
from Printer);

11. Найдите среднюю скорость ПК.

select avg(speed) from PC;

12. Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

select avg(speed)
from Laptop
where price >1000;

13. Найдите среднюю скорость ПК, выпущенных производителем A.

select avg(speed)
from Product
join PC on PC.model=Product.model
where maker = 'A';

14. Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

select Classes.class, name, country
from Classes
join Ships on Classes.class=Ships.class
where numGuns >=10;

15. Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

Select hd
from PC
group by hd
having count (model)>= 2;

16. Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), 
Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

Select distinct A.model, B.model, B.speed, B.ram
from PC AS A, PC B
where A.speed = B.speed and A.ram = B.ram and A.model > B.model;

17. Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК. Вывести: type, model, speed

select distinct type, Laptop.model, Laptop.speed
from Product, Laptop, PC
where Laptop.speed < all (select speed from PC) and type = 'Laptop';

18. Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

select distinct maker, price
from product, printer
where product.model = printer.model
and color = 'y'
and price = (
select min(price) from printer
where printer.color = 'y'
);

19. Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
Вывести: maker, средний размер экрана

Select distinct maker, avg(screen) as avg_screen
from Product, Laptop
where product.model=laptop.model
group by maker;

20. Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.

