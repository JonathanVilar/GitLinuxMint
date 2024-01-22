#!/bin/bash


# ---------------------------------------------------------------------------------------------------
# GRUPO: Grupo 2, Vilar, Nicolussi
#
# Ejercicio: Practico 2 , Ejercicio 1
# Algoritmo: Realizar un script llamado "SUMA" que realice la suma de 2 parámetros introducidos 
#(tendrá que poder sumar números decimales como, como 2.2+3).
#
#
# ---------------------------------------------------------------------------------------------------

#si no se registran parametros ingresados se volvera a ejecutar hasta que se ingrese salir
while true; do
    if [ $# -ne 2 ]; then
        echo "Por favor, proporcione dos números como parametros para realizar la suma."
    else
        num1="$1"
        num2="$2"
#filtro para punto flotante
        resultado=$(echo "$num1 + $num2" | bc)
        echo "Resultado de la suma: $resultado"
    fi

    #para volver a preguntar por los parametros
    read -p "Ingrese dos numeros separados por espacios (o 'salir' para salir:) " parametros
    #para ver si salio el usuario
    if [ "$parametros" == "salir" ]; then
        break
    fi

    #ir desplazando los parametros posicionales
    set -- $parametros
done
