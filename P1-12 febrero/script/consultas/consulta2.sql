-- CONSULTA 2
use Practica1_semi2;

select tiempo.año, count(tiempo.año) as cantidad from desastre 
inner join tiempo on desastre.idTiempo = tiempo.idTiempo
group by tiempo.año