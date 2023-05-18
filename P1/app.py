#!/usr/bin/python3
from os import system
def ingresarOpcion():
    correcto = False
    num=0
    while(not correcto):
        try:
            num = int(input("ingrese un numero: "))
            correcto = True
        except ValueError:
            print('Error con el numero')
    return num 
salir = False 
opcion = 0

while not salir:
    print('1. Borrar tablas')
    print('2. crear tablas')
    print('3. cargar temporal')
    print('4. cargar tablas')
    print('5. consultas')
    print('6. salir')
    print('Elige una opcion')

    opcion = ingresarOpcion()

    if opcion == 1:
        print('1. Borrar tablas')
        system( "sqlcmd -S DESKTOP-H22B1LD\Practica1_semi2 -i C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\'P1-12 febrero'\\script\\borrarTablas.sql")
        print ("\n Tablas Borradas \n")
    elif opcion == 2:
        print('2. crear tablas')
        system( 'sqlcmd -S DESKTOP-H22B1LD\Practica1_semi2 -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\crearTablas.sql"')
        print ("\n Tablas Creadas \n")
    elif opcion == 3:
        print('3. cargar temporal')
        system( "sqlcmd -S DESKTOP-H22B1LD\Practica1_semi2 -i C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\'P1-12 febrero'\\script\\cargarTemporal.sql")
        print ("\n Informacion cargada en tabla temporal \n")
    elif opcion == 4:
        print('4. cargar tablas')
        system( "sqlcmd -S DESKTOP-H22B1LD\Practica1_semi2 -i C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\'P1-12 febrero'\\script\\cargarTablas.sql")
        print ("\n Tablas cargadas con informacion de la temporal \n")
    elif opcion == 6:
        salir = True
    else:
        print('Ingrese una opcion')
print('Fin')