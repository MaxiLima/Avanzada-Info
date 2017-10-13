hombre(pedro) .
hombre(manuel) .
hombre(arturo) .
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría) .

niño(X,Y):- padre(Y,X).
hijo(X,Y):- padre(Y,X), hombre(X).
hija(X,Y):- padre(Y,X), mujer(X).
hermano-o-hermana(X,Y):- niño(X,Z), niño(Y,Z).
hermano(X,Y):- hijo(X,Z), niño(Y,Z).
hermana(X,Y):- hija(X,Z), niño(Y,Z).

