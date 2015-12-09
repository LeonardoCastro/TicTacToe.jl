##########################################################################################
######################### Este archivo contiene los tipos usados y    ####################
######################### las funciones que los crean                 ####################
##########################################################################################

type Gato                     ## Tipo gato con el tablero, el cual será un vector
    tablero::Vector{Int8}     ## 0 = vacía, 1 = X, -1 = 0
end

Gato() = Gato(zeros(Int8, 9)) ## Se inicia el tablero vacío

type Jugador        ## Tipo jugador, con su número y marcador
    num::Int8       ## Judador 1 o Jugador 2
    marcador::Int8
end

Jugador(n::Int64) = Jugador(Int8(n), Int8(0))  # Función que inicia un jugador nuevo con su número
                                               # marcador cero

