#!/bin/bash


# ---------------------------------------------------------------------------------------------------
# GRUPO: Grupo 2, Vilar, Nicolussi
#
# Ejercicio: Practico 2  , Ejercicio 4
# Algoritmo: Realizar un script llamado "division" que realice la division de 2 parámetros introducidos 
#(tendrá que poder dividir números decimales como, 2.2/3).
#
#
# ---------------------------------------------------------------------------------------------------

#si no se registran parametros ingresados se volvera a ejecutar hasta que se ingrese salir
while true; do
    read -p "Ingrese dos números separados por espacio (o 'salir' para salir): " parametros

    if [ "$parametros" == "salir" ]; then
        echo "Saliendo del programa"
        exit 0
    fi

    set -- $parametros

    if [ $# -ne 2 ]; then
        echo "Por favor, proporcione dos numeros como parametros para realizar la division."
    else
        num1="$1"
        num2="$2"

# Verificar si el divisor es igual a cero
        if (( $(echo "$num2 == 0" | bc --mathlib) )); then
            echo "No se puede dividir por cero. Por favor, proporcione un divisor distinto de cero."
        else
            num1=$(echo "$num1" | bc)
            num2=$(echo "$num2" | bc)

# Resultado hasta 4 decimales
            resultado=$(echo "scale=4; $num1 / $num2" | bc)
            echo "Resultado de la división: $resultado"
        fi
    fi
done
