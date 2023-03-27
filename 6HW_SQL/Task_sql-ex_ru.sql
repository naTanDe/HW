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
where speed >= 450

10.
