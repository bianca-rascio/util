##NOVO BQ

SELECT * FROM `inteligencia-gglobo-sandbox.customer_journey.customer_journey_20190301_20190531_hypera` LIMIT 1000

## criando nova tabela em cima de uma ja existente 
CREATE TABLE `inteligencia-gglobo-sandbox.customer_journey.teste__customer_hypera` AS
SELECT * FROM `inteligencia-gglobo-sandbox.customer_journey.customer_journey_20190301_20190531_hypera` LIMIT 10000

##selecionando colunas espscificas
SELECT clicks FROM `inteligencia-gglobo-sandbox.customer_journey.teste__customer_hypera` 

##1
select count(*) as usuarios_unicos

FROM (SELECT globo_id, count(*) as count

FROM `inteligencia-gglobo-sandbox.customer_journey.customer_journey_20190301_20190531_hypera` 

group by globo_id) 

##2
CREATE TABLE `inteligencia-gglobo-sandbox.customer_journey.TESTE` as

select gender, age, income, count(*) as impressions, sum(clicks) as clicks, IEEE_DIVIDE(sum(clicks), count(*)) as CTR

FROM `inteligencia-gglobo-sandbox.customer_journey.customer_journey_20190301_20190531_hypera` 

group by gender, age, income

order by CTR desc

##3
create table `inteligencia-gglobo-sandbox.customer_journey.hypera_line_creative` as

SELECT line_item_name as line_item, CreativeId as creative_id, count(*) as impressions, sum(clicks) as cliques

FROM `inteligencia-gglobo-sandbox.customer_journey.customer_journey_20190301_20190531_hypera` 

group by line_item_name, CreativeId




select count(*) as orders

FROM (SELECT globo_id, count(*) as count

FROM `inteligencia-gglobo-sandbox.customer_journey.customer_journey_20190301_20190531_hypera` 

group by globo_id) 








