numero(3).

%factorial(X,Y):- numero(X)=< 1,Y is 1, !.
%factorial(X,Y):- Y is X + factorial(Y - 1,Y).

factorial(0, 1):- !.
factorial(X,F):- X1 is X-1, factorial(X1,F1), F is X*F1.

fibo(0,1):- !.
fibo(1,1):- !.
fibo(X, F):- X1 is X - 1, X2 is X - 2, fibo(X1, F1), fibo(X2, F2), F is F2 + F1.
