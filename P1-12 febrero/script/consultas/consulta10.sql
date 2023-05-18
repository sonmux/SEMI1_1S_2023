-- CONSULTA 10
use Practica1_semi2;

select pais.nombrePais, avg(tsunami.alturaOla) as AVG_alturaMaximaAgua from desastre
inner join pais on desastre.idPais = pais.idPais
inner join tsunami on desastre.idTsunami = tsunami.idTsunami
group by pais.nombrePais