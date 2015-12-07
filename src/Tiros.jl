##########################################################################################
######################### Este archivo contiene las funciones que son ####################
######################### usadas para que los jugadores tiren         ####################
##########################################################################################


# Esta función ejecuta el tiro en una celda libre
function Tiro(J::Jugador, G::Gato, loc::Int64, R::Array{Int8, 1})

    if G.tablero[loc] == 0

        G.tablero[loc] = R[J.num]

        return true
    else
        println("Celda ya ocupada, ¡elige otra!")
        return false
    end
end


# Esta función ejecuta el turno entero de un jugador
function Turno(J::Jugador, Tablero::Gato, tiro::Int64, gane::Bool, R::Array{Int8,1})

    if gane == false  # si no ha ganado...
        num = J.num

        check = false
        while check == false

            loc = Pregunta_tiro(num)    # Se le pregunta donde quiere tirar
            check = Tiro(J, Tablero, loc, R)  # Si tiró en una celda libre
        end                                   # entonces se checa si es un tiro ganador

        if  Ganar(Tablero, J, R) == true      # y si sí lo es... se anunca al ganador!
            println("¡Miau $num ha ganado!")
            return true
        else
            return false
        end
    end
end

####### Estos arreglos son las distintas combinaciones para las cuales se puede ganar

Comb_h = [(1, 2, 3), (4, 5, 6), (7, 8, 9)]  # combinaciones horizontales
Comb_v = [(1, 4, 7), (2, 5, 8), (3, 6, 9)]  # combinaciones verticales
Comb_d = [(1, 5, 9), (3, 5, 7)]             # combinaciones diagonales

Combinaciones = [Comb_h, Comb_v, Comb_d]    # juntamos todas las combinaciones


##### Esta función checa si hay alguna combinación ganadora
function Ganar(G::Gato, J::Jugador, R::Array{Int8, 1})
    for (loc1, loc2, loc3) in Combinaciones
        if G.tablero[loc1] == G.tablero[loc2] == G.tablero[loc3] == R[J.num]
            J.marcador += 1 # si hay un ganador entonces se suma uno a su marcador
            return true
        end
    end
end

