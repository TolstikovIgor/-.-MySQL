/*Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
*/

CREATE OR REPLACE VIEW prod_view AS
  SELECT products.name AS prod_name, catalogs.name AS cat_name 
    FROM products,catalogs 
      WHERE products.catalog_id = catalogs.id;

SELECT * FROM prod_view;
