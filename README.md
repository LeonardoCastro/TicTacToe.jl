# TicTacToe.jl

Este repositorio contiene la información de un sencillo juego de Tic Tac Toe o Gato para [Julia](http://julialang.org/).

El juego se ejecuta desde la terminal o desde un notebook. A cada tiro se le preguntará al jugador en qué casilla desea tirar.

El tablero está programado como un arreglo unidimensional de 9 entradas. De esta manera, la casilla 1 será
la equina superior izquierda del tablero, mientras que la casilla 9 será la esquina inferior derecha.

En la imagen siguiente se encuentra la numeración exacta del tablero:

  ``
       |     |
       
    1  |  2  |  3
    
  -----|-----|-----
  
    4  |  5  |  6
    
  -----|-----|-----
  
    7  |  8  |  9
    
       |     |
``


## Instrucciones para jugar

Entrar a [JuliaBox.org](https://www.juliabox.org) para poder usar Julia sin tener que instalarlo localmente con una cuenta de gmail.

Subir los archivos `.jl` de la carpeta `src`.

Ir a la consola y escribir lo siguiente

`juser@juliabox:~$ julia`

`julia> using TicTacToe `

`julia> Juego()`

## Documentación

El programa se encuentra comentado para comprender el código escrito.







