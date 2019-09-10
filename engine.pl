:-include('rules.pl').
:-include('facts.pl').
:-include('recipes.pl').
:-include('exercises.pl').

verify_distance( Distance ) :- 
    callable( Distance );
    half( Distance ) -> write( 'Medio fondo');
    complete( Distance ) -> write( 'Fondo completo').

verify( Weight, Size ) :-
    callable(Weight), callable(Size);
     low_weight(  Weight, Size, Z ) -> low_weight_diet2(), nl, nl, write( "WARNING ::: \n Usted no puede hacer ejercicio") ;
     normal_weight(  Weight, Size, Z ) -> normal_weight_diet1(), nl, nl, normal_height_exercise();
     overweight(  Weight, Size, Z ) -> normal_weight_diet2(), nl, nl, over_height_exercise();
     obese(  Weight, Size, Z )-> obese_diet1() , nl, nl, obese_exercise().


calc( Distance, Genre, Age, Weight, Size ) :- 
    % Calcula todo 
    write( 'Calculando ... '), nl, nl, nl,
    write( 'TIPO DE EJERCICIO -> '),
    verify_distance( Distance ), nl, nl, nl,
    write( 'DIETA y EJERCICIO RECOMENDADO'), nl,
    verify( Weight, Size ).



start:- 
    write("Escribe tu distancia corrida (800, 1200, 1500, 1600, 5000, 10000, 21000, 42000, 70000)"), nl,
    read( Distance ), nl, nl,
    write("Género ( 1 -> Mujer, 2 -> hombre )"), nl,
    read( Genre ), nl, nl,
    write("Edad"), nl,
    read( Age ), nl, nl,
    write("Peso"), nl,
    read( Weight ), nl, nl,
    write("Tamaño en centímetros"), nl,
    read( Size ), nl, nl,
    calc( Distance, Genre, Age, Weight, Size/100 ).






