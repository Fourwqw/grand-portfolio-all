price(house, 1000).
price(car, 500).
price(computer, 400).
price(bed, 250).

imeet(sasha, 2000).
imeet(maxim, 260).
 
imeet1(P, C):-
   imeet(P, X1),
   price(C, X2),
   X1 > X2.
 
neImeet(P, C):-
   imeet(P, X1),
   price(C, X2),
   X2 > X1.
 
sravnenieItem(P1, P2, C1):-
   imeet1(P1, C1),
   neImeet(P2, C1),
   write(C1).
 
sravnenie(P1,P2):-
   sravnenieItem(P1,P2, house);
   sravnenieItem(P1,P2, car);
   sravnenieItem(P1,P2, computer);
   sravnenieItem(P1,P2, bed).
