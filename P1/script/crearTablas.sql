create table temporal(
	anio int,
	mes int,
	dia int,
	TsunamiEvent int,
	MaximumWaterHeight float,
	TotalDeaths int,
	TotalDamage float,--int 400
	TotalHousesDestroyed int,
	TotalHousesDamaged int,
	Country varchar(250)
);

create table tiempo(
	idTiempo int identity(1,1) primary key,
	año int
);

create table pais(
	idPais int identity(1,1) primary key,
	nombrePais varchar(250)
);

create table tsunami(
	idTsunami int identity(1,1) primary key,
	alturaOla float
);

create table desastre(
	idDesastre int identity(1,1) primary key,
	totalMuertes int,
	totalDaños float,
	casasDestruidas int,
	casasDañadas int,
	idTiempo int,
	idPais int,
	idTsunami int,
	foreign key (idTiempo) references tiempo(idTiempo),
	foreign key (idPais) references pais(idPais),
	foreign key (idTsunami) references tsunami(idTsunami)
);