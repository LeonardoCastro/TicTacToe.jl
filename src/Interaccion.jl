##########################################################################################
######################### Este archivo contiene las funciones que son ####################
######################### usadas para comunicarse con los jugadores ######################
##########################################################################################


function Init(empate::Bool)     # Función para empezar el juego
    if empate == true           # En caso de que haya habido empate o sea el primer juego
        println("¿Quién empieza? \n Se tiró una moneda y...")
        moneda = rand(1:2)      # Se tira una moneda para saber quien empieza

        # X se modelan con un 1 y las O's con un -1. Se regresa un arreglo para saber el orden
        if moneda == 1
            println("Empiezan X \n \n Miau 1: X \n Miau 2: O")
            return Int8[1, -1]   ## <= estos son los arreglos
        else
            println("Empiezan O \n \n Miau 1: O \n Miau 2: X")
            return Int8[-1, 1]   ## <= estos son los arreglos
        end
    end
end

function NuevoJuego()         # Al final de cada juego se pregunta si se quiere volver a
    check = false             # jugar
    while check == false
        println("¿Jugar de nuevo? [s/n]")
        respuesta = chomp(readline(STDIN))
        if respuesta == "s" || respuesta == "S" || respuesta == "Si" || respuesta == "si"
            return true
            check = true
        elseif respuesta == "n" || respuesta == "N" || respuesta == "No" || respuesta == "no"
            return false
            check = true
        else
            println("Lo siento, respuesta incorrecta")
            check = false
        end
    end
end

function Pregunta_tiro(num::Int8)   # Se le preguntal al jugador donde quiere tirar
    check2 = false
    while check2 == false
        println("¿Donde quieres tirar, Miau $num?")
        loc = parse(Int64, chomp(readline(STDIN)))
        if loc > 9
            println("Solo hay 9 celdas -_-")
            check2 = false
        else
            check2 = true
            return loc
        end
    end
end

function pintar(G::Gato)          # Esta función pinta el tablero en la terminal después
    S = Array(Char, 9)            # de cada tiro
    for i = 1:9
        if G.tablero[i] == 1
            S[i] = 'X'
        elseif G.tablero[i] == -1
            S[i] = 'O'
        else
            S[i] = '-'
        end
    end
    println(transpose(reshape(S, 3, 3)))
end


