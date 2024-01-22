#!/bin/bash


# ---------------------------------------------------------------------------------------------------
# GRUPO: Grupo 2, Vilar, Nicolussi
#
# Ejercicio: Practico 2  , Ejercicio 5
# Algoritmo: Realizar un script llamado 'calc01.sh' que realice operaciones básicas entre 2
# números llamando a cada uno de los scripts anteriormente creados (suma, resta, multiplicación y división).
#
# ---------------------------------------------------------------------------------------------------


echo "+++++++++++////////*******-------BIENVENIDO-------*******////////+++++++++++"
echo "+++++++++++////////*******---------A   LA---------*******////////+++++++++++"
echo "+++++++++++////////*******------CALCULADORA-------*******////////+++++++++++"


echo "Seleccione la operación a realizar"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
echo "5. Salir" 
read opcion
case $opcion in 
   1)
            # Llamo a la operación de suma
   ./suma-Ej1TpGn2.sh
      ;;
   2)
            # Llamo a la operación de resta
   ./resta-Ej2TpGn2Vfinal.sh 
      ;;
   3)
            # Llamo a la operación de multiplicación
   ./multiplicacion-Ej3TpGn2Vfinal.sh 
      ;;
   4)
            # Llamo a la operación de División
   ./division-Ej4TpGn2Vfinal.sh 
      ;;
   5)
      echo "Saliendo del programa"
      exit 0
      ;;
   *)
      echo "Opción incorrecta, por favor ingrese una opción del 1 al 5"
      ;;
 esac
