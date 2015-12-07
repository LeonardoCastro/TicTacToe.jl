##########################################################################################
######################### Este archivo contiene la función que reúne  ####################
######################### todas las funciones vistas en los otros     ####################
######################### archivos y que ejecuta el juego             ####################
##########################################################################################

function Juego()

    J1 = Jugador(1)                                       # Creación del Jugador 1
    J2 = Jugador(2)                                       # Creación del Jugador 2

    juego = true                                          # Variable para saber si se quiere seguir jugando
    empate = true                                         # Variable para saber si hubo un empate

    while juego == true                                   # Mientras se quiera seguir jugando

        R = Init(empate)                                  # Arreglo con el orden de los jugadores

        Tablero = Gato()                                  # Se crea el tablero

        tiro = 0                                          # Variable para saber en que tiro vamos
        gane = false                                      # Variable para saber si alguien ha ganado

        while tiro < 9 && gane == false                   # Mientras nadie haya ganado y haya espacios vacíos

            gane = Turno(J1, Tablero, tiro, gane, R)      # Tiro del jugador 1
            tiro += 1
            pintar(Tablero)


            if tiro < 9 && gane == false
                gane = Turno(J2, Tablero, tiro, gane, R)  # Tiro del jugador 2
                tiro += 1
                pintar(Tablero)
            end

            if tiro == 9 && gane == false                 # Si llegamos al ultimo tiro y nadie ha ganado
                println("¡Empate! \n")

            end
        end

        empate == !juego

        m1 = J1.marcador; m2 = J2.marcador
        println("Marcador: \n Miau 1: $m1, Miau 2: $m2")  # Imprimimos el marcador

        juego = NuevoJuego()                              # Preguntamos si se quiere seguir jugando
    end
end