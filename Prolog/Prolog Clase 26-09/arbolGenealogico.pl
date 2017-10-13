hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(mar�a).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a) .

%ni�o(X,Y)//expresa que X es hijo o hija de Y.
%hijo(X,Y)//expresa que X es un hijo var�n de Y.
%hija(x,y)//expresa que X es una hija de Y.
%hermano-o-hermana(X,Y)//expresa que X es hermano o hermana de Y.
%hermano(X,Y)//expresa que X es un hermano de Y.
%hermana(X,Y)//expresa que X es una hermana de Y.

es_ni�o(X,Y):-padre(Y,X).
es_hijo(X,Y):-es_ni�o(X,Y),hombre(X).
es_hija(X,Y):-es_ni�o(X,Y),mujer(X).
hno_hna(X,Y):-es_ni�o(X,Z),es_ni�o(Y,Z),dif(X,Y).
hermano(X,Y):-hno_hna(X,Y),hombre(X).
hermana(X,Y):-hno_hna(X,Y),mujer(X).
