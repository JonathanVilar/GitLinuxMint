#!/bin/bash

# ---------------------------------------------------------------------------------------------------
# GRUPO: Grupo 2, Vilar, Nicolussi
#
# Ejercicio: Practico 2  , Ejercicio 6
# Algoritmo: Realizar un script llamado 'calc02.sh' que realice operaciones básicas entre 2
# números sin llamar a los script creados (suma, resta, multiplicación y división).
#
# ---------------------------------------------------------------------------------------------------



#el bucle limpia la pantalla al comenzar con clear
while true; do
    clear
    echo "+++++++++++////////*******-------BIENVENIDO-------*******////////+++++++++++"
    echo "+++++++++++////////*******---------A   LA---------*******////////+++++++++++"
    echo "+++++++++++////////*******------CALCULADORA-------*******////////+++++++++++"

    echo "Seleccione la operacion a realizar"
    echo "1. Suma"
    echo "2. Resta"
    echo "3. Multiplicacion"
    echo "4. Division"
    echo "5. Salir" 
    read operacion

    case $operacion in 
       1)
 #Suma 
            read -p "Ingrese el primer número: " num1
            read -p "Ingrese el segundo número: " num2
            resultado=$(echo "$num1 + $num2" | bc)
            echo "Resultado de la suma: $resultado"
            ;;
       2)
 #Resta
            read -p "Ingrese el primer nmero: " num1
            read -p "Ingrese el segundo número: " num2
            resultado=$(echo "$num1 - $num2" | bc)
            echo "Resultado de la resta: $resultado"
            ;;
       3)
 # multiplicacion
            read -p "Ingrese el primer numero: " num1
            read -p "Ingrese el segundo número: " num2
            resultado=$(echo "$num1 * $num2" | bc)
            echo "Resultado de la multiplicación: $resultado"
            ;;
       4)
 # división
            read -p "Ingrese el numerador: " num1
            read -p "Ingrese el divisor: " num2
            if (( $(echo "$num2 == 0" | bc --mathlib) )); then
                echo "No se puede dividir por cero. Por favor, proporcione un divisor distinto de cero."
            else
                resultado=$(echo "scale=4; $num1 / $num2" | bc)
                echo "Resultado de la división: $resultado"
            fi
            ;;
       5)
          echo "Saliendo del programa"
          exit 0
          ;;
       *)
          echo "Opción incorrecta, por favor ingrese una opción del 1 al 5"
          ;;
#para darle al usuario la posibilidad de volver a usar el programa 
     esac
     read -p "Presione Enter para continuar..."
done
