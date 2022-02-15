-- Представления

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `Platforma`.`prod` AS
select
    `Platforma`.`products`.`id` AS `id`,
    `Platforma`.`products`.`name` AS `name`,
    `Platforma`.`products`.`price` AS `price`,
    `Platforma`.`products`.`catalog_id` AS `catalog_id`
from
    `Platforma`.`products`
order by
    `Platforma`.`products`.`catalog_id`,
    `Platforma`.`products`.`name`

CREATE OR REPLACE
ALGORITHM = TEMPTABLE VIEW `Platforma`.`cat2` AS
select
    `Platforma`.`catalogs`.`id` AS `id`,
    `Platforma`.`catalogs`.`name` AS `name`
from
    `Platforma`.`catalogs`

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `Platforma`.`cat_reverse` (`catalog`,
`catalog_id`) AS
select
    `Platforma`.`catalogs`.`name` AS `name`,
    `Platforma`.`catalogs`.`id` AS `id`
from
    `Platforma`.`catalogs`

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `Platforma`.`namecat` (`id`,
`name`,
`total`) AS
select
    `Platforma`.`catalogs`.`id` AS `id`,
    `Platforma`.`catalogs`.`name` AS `name`,
    length(`Platforma`.`catalogs`.`name`) AS `LENGTH(name)`
from
    `Platforma`.`catalogs`

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `Platforma`.`prod` AS
select
    `Platforma`.`products`.`id` AS `id`,
    `Platforma`.`products`.`name` AS `name`,
    `Platforma`.`products`.`price` AS `price`,
    `Platforma`.`products`.`catalog_id` AS `catalog_id`
from
    `Platforma`.`products`
order by
    `Platforma`.`products`.`catalog_id`,
    `Platforma`.`products`.`name`