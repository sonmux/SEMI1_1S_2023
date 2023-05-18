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
#!terminar = False
opcion = 0

while not salir:
    print('\n\n*****************************************************************')
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
        system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\borrarTablas.sql"')
        print ("\n Tablas Borradas \n")
    elif opcion == 2:
        print('2. crear tablas')
        system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\crearTablas.sql"')
        print ("\n Tablas Creadas \n")
    elif opcion == 3:
        print('3. cargar temporal')
        system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\cargarTemporal.sql"')
        print ("\n Informacion cargada en tabla temporal \n")
    elif opcion == 4:
        print('4. cargar tablas')
        system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\cargarTablas.sql"')
        print ("\n Tablas cargadas con informacion de la temporal \n")
    elif opcion == 5:
        terminar = False
        while not terminar:
            print('\n\n++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++')
            print('1. Consulta 1')
            print('2. Consulta 2')
            print('3. Consulta 3')
            print('4. Consulta 4')
            print('5. Consulta 5')
            print('6. Consulta 6')
            print('7. Consulta 7')
            print('8. Consulta 8')
            print('9. Consulta 9')
            print('10. Consulta 10')
            print('11. Terminar Consulta')
            print('12. Consulta 3.2')
            print('Elige una opcion')
            opcion = ingresarOpcion()

            if opcion == 1:
                print('\n\n--------------------------------------------------------------------')
                print('1. CONSULTA 1 \n')
                print('Debe mostrar un SELECT COUNT(*) de todas las tablas para ver que si realizo la carga en las tablas del modelo \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta1.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta1.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta1.txt"')
                print ("\n fin consulta 1 \n")
            elif opcion == 2:
                print('\n\n--------------------------------------------------------------------')
                print('2. CONSULTA 2 \n')
                print('Cantidad de tsunamis por año. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta2.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta2.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta2.txt"')
                print ("\n fin consulta 2 \n")
            elif opcion == 3:
                print('\n\n--------------------------------------------------------------------')
                print('3. CONSULTA 3 \n')
                print('Tsunamis por país y que se muestran los años. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta3.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta3.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta3.txt"')
                print ("\n fin consulta 3 \n")
            elif opcion == 12:
                print('\n\n--------------------------------------------------------------------')
                print('3. CONSULTA 3 \n')
                print('Tsunamis por país y que se muestran los años. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consutla3_2.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consutla3_2.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta3_2.txt"')
                print ("\n fin consulta 3 \n")
            elif opcion == 4:
                print('\n\n--------------------------------------------------------------------')
                print('4. CONSULTA 4 \n')
                print('Promedio de Total Damage por país. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta4.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta4.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta4.txt"')
                print ("\n fin consulta 4 \n")
            elif opcion == 5:
                print('\n\n--------------------------------------------------------------------')
                print('5. CONSULTA 5 \n')
                print('Top 5 de países con más muertes. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta5.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta5.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta5.txt"')
                print ("\n fin consulta 5 \n")
            elif opcion == 6:
                print('\n\n--------------------------------------------------------------------')
                print('6. CONSULTA 6 \n')
                print('Top 5 de años con más muertes. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta6.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta6.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta6.txt"')
                print ("\n fin consulta 6 \n")
            elif opcion == 7:
                print('\n\n--------------------------------------------------------------------')
                print('7. CONSULTA 7 \n')
                print('Top 5 de años que más tsunamis han tenido. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta7.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta7.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta7.txt"')
                print ("\n fin consulta 7 \n")
            elif opcion == 8:
                print('\n\n--------------------------------------------------------------------')
                print('8. CONSULTA 8 \n')
                print('Top 5 de países con mayor número de casas destruidas. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta8.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta8.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta8.txt"')
                print ("\n fin consulta 8 \n")
            elif opcion == 9:
                print('\n\n--------------------------------------------------------------------')
                print('9. CONSULTA 9 \n')
                print('Top 5 de países con mayor número de casas dañadas. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta9.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta9.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta9.txt"')
                print ("\n fin consulta 9 \n")
            elif opcion == 10:
                print('\n\n--------------------------------------------------------------------')
                print('10. CONSULTA 10 \n')
                print('Promedio de altura máxima del agua por cada país. \n')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta10.sql"')
                system( 'sqlcmd -S DESKTOP-H22B1LD\SQLEXPRESS -i "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\consultas\\consulta10.sql" -o "C:\\Users\\anggelo\\Desktop\\enunciados\\semi\\P1-12 febrero\\script\\txtConsultas\\txtConsulta10.txt"')
                print ("\n fin consulta 10 \n")
            elif opcion == 11:
                terminar = True
            else:
                print('Ingrese una opcion valida')
    elif opcion == 6:
        salir = True
    else:
        print('Ingrese una opcion valida')
print('Fin')