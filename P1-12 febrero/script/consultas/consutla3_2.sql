use Practica1_semi2;

select pais.nombrePais,tiempo.año from desastre 
inner join pais on desastre.idPais = pais.idPais
inner join tiempo on desastre.idTiempo = tiempo.idTiempo
order by pais.nombrePais asc, tiempo.año asc