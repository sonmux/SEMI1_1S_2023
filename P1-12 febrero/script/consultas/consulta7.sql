-- CONSULTA 7
use Practica1_semi2;

select tiempo.año, count(tiempo.año) as TOTAL_tsunamiAño from desastre 
inner join tiempo on tiempo.idTiempo = desastre.idTiempo
group by tiempo.año 
order by TOTAL_tsunamiAño desc
offset 0 rows fetch first 5 rows only