use Practica1_semi2;

bulk insert
	temporal
from
	'C:\Users\anggelo\Desktop\enunciados\semi\P1-12 febrero\historial.csv'
with(
	fieldterminator = ',',
	rowterminator = '\n',
	firstrow = 2
);
