young( A ) :- A > 14, A < 22. 
old( B ) :- B > 21, B < 61. 
not-equals(X, Y) :- equals(X, Y), !, fail.

bmi( Weight, Size, Z ) :-  
Z is Weight / (Size ** 2).

low_weight( Weight, Size, Z ) :- bmi( Weight, Size, Z ), Z < 19.
normal_weight( Weight, Size, Z ) :- bmi( Weight, Size, Z ), Z > 19, Z < 25.
overweight( Weight, Size, Z ) :- bmi( Weight, Size, Z ), Z > 25, Z < 30.
obese( Weight, Size, Z ) :-  bmi( Weight, Size, Z ), Z > 30. 


verify( Weight, Size ) :-
    callable(Weight), callable(Size);
     low_weight(  Weight, Size, Z ) -> write('low');
     normal_weight(  Weight, Size, Z ) -> write('normal');
     overweight(  Weight, Size, Z ) -> write('overweight');
     obese(  Weight, Size, Z )-> write('obese').