-- CONSULTA 4
use Practica1_semi2;

select pais.nombrePais, avg(all desastre.totalDaños) as AVG_TotalDamage from desastre
inner join pais on desastre.idPais = pais.idPais
group by pais.nombrePais