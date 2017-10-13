numero(-2).
numero(35).
numero(0).

terna(X,Y,Z):-numero(X),!,numero(Y),numero(Z).
% ! operador de corte, se corta cuando lo que esta a su izquierda es
% "true"

%FuncionModulo
menorACero(X,Y):- Y is -X.
igualACero(Y):- Y is 0.
mayorACero(X,Y):- Y is X.

modulo(X,Y):- X<0    ,menorACero(X,Y),!;
              X == 0 ,igualACero(Y),!;
              X>0    ,mayorACero(X,Y).
%ModuloProfe
modulo2(X,Y):- X<0    , Y is -X,!;
               X == 0 , Y is 0,!;
               X>0    , Y is X.

%Hallar el Maximo
%productocartesiano seleccion proyeccion maximo

prod_cart(X,Y):-numero(X),numero(Y).
seleccion(X,Y):-prod_cart(X,Y),X<Y.
proyeccion(X):-seleccion(X,_).
maximo(X):-numero(X),not(proyeccion(X)),!.

%Mes de mayor importe de venta
ventas(enero,1342).
ventas(febrero,4231).
ventas(marzo,5121).
ventas(abril,5121).

prod_vent(X,Y,Z,W):-ventas(X,Y),ventas(Z,W).
seleccionVent(X,Y,Z,W):-prod_vent(X,Y,Z,W),Y<W.
proyeccionVent(X):-seleccionVent(X,_,_,_).
maximaVent(X):-ventas(X,_),not(proyeccionVent(X)).

%FACTORIAL

factorial(0,1):-!.
factorial(X,Y):- X1 is X-1 , factorial(X1,Y1),  Y is X*Y1.

%FIBONACCI = 1,2,3,5,8... la escalera

fibonacci(0,1):-!.%el original.
fibonacci(1,1).
fibonacci(X,Y):- X1 is X-1, X2 is X-2, fibonacci(X1,Y1), fibonacci(X2,Y2), Y is Y1+ Y2.
