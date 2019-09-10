:-include('rules.pl').
:-include('facts.pl').
:-include('recipes.pl').
:-include('exercises.pl').

calc( Distance, Genre, Age, Weight, Size ) :- 
    % Calcula todo 
    write( 'Calculando ... '),
    nl,
    verify( Weight, Size ).



start:- 
    write("Escribe tu distancia corrida"), nl,
    read( Distance ), nl, nl,
    write("Género ( 1 -> Mujer, 2 -> hombre )"), nl,
    read( Genre ), nl, nl,
    write("Edad"), nl,
    read( Age ), nl, nl,
    write("Peso"), nl,
    read( Weight ), nl, nl,
    write("Tamaño"), nl,
    read( Size ), nl, nl,
    calc( Distance, Genre, Age, Weight, Size ).






