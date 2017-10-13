mayor(A,B) :- A>B.
menor(A,B):- A<B.


triangulo(X,Y,Z):- menor(X, Y+Z),
                   menor(Y, X+Z),
                   menor(Z,X+Y).

trianguloYTipo(X,Y,Z,Tipo):- triangulo(X,Y,Z), X=Y,Y=Z,Tipo="Eq";
                             triangulo(X,Y,Z), ((X=Y,X\=Z);(Y=Z,Z\=X);(Z=X,Z\=Y)),Tipo="Iso";
                             triangulo(X,Y,Z), X\=Y,Y\=Z, Tipo="Esc".
