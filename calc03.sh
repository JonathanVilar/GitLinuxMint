#!/bin/bash

# ---------------------------------------------------------------------------------------------------
# GRUPO: Grupo 2, Vilar, Nicolussi
#
# Ejercicio: Practico 2  , Ejercicio 7
# Algoritmo: Realizar un script llamado 'calc03.sh' que realice operaciones básicas entre 2
# números por parametros (suma, resta, multiplicación y división).
#
# ---------------------------------------------------------------------------------------------------

# si hay 3 argumentos corre el script y los guarda como parametro posicional y variable
if [ $# -ne 3 ]; then
    echo "Para usar debe ingresar parametros... el uso correcto de $0 es: <operación> <num1> <num2> , sin simbolos "
    exit 1
fi

operacion="$1"
num1="$2"
num2="$3"
resultado=0

#Operacion es uuna posicion que dicta el usuario y que esta en el cuerpo de case, si no da un mensaje de error

case "$operacion" in
    1)
        resultado=$(echo "$num1 + $num2" | bc)
        echo "Se ha selecciolnado una suma"
        ;;
    2)
        resultado=$(echo "$num1 - $num2" | bc)
        echo "Se ha seleccionado una resta"
        ;;
    3)
        resultado=$(echo "$num1 * $num2" | bc)
        echo "Se ha seleccionado una multiplicacion"
        ;;
    4)
        if (( $(echo "$num2 == 0" | bc --mathlib) )); then
            echo "No se puede dividir por cero. Proporcione un divisor distinto de cero."
            exit 1
        fi
        resultado=$(echo "scale=2; $num1 / $num2" | bc)
        echo "Se ha seleciionado una division"
        ;;
    *)
        echo "Operación no válida. Use 'suma', 'resta', 'multiplicacion' o 'division'."
        exit 1
        ;;
esac

echo "Resultado de la operación $operacion: $resultado"
