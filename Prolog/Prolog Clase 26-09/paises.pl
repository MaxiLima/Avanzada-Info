es_un_pais(argentina). %esto es una regla, termina en punto
es_un_pais(chile). %solo poseen un valor de verdad
es_un_pais(brasil). %es_un_pais(X),write(X),nl,fail.
es_un_pais(monaco).
es_un_pais(australia).
es_un_pais(bolivia).
es_un_pais(peru).
es_un_pais(paraguay).
es_un_pais(colombia).

limita_con(argentina,chile).
limita_con(argentina,brasil).
limita_con(chile,bolivia).
limita_con(brasil,colombia).
limita_con(argentina,bolivia).
limita_con(argentina,uruguay).
limita_con(paraguay,argentina).
limita_con(paraguay,brasil).
limita_con(paraguay,bolivia).
limita_con(bolivia,peru).

es_una_provincia(catamarca).
es_una_provincia(uruguay).

son_limitrofes(X,Y):-limita_con(X,Y);
                     limita_con(Y,X). %son_limitrofes(X,Y),write(X+Y),nl,fail.

son_translimitrofes(X,Y):-son_limitrofes(X,Z),
                          son_limitrofes(Z,Y),
                          not(son_limitrofes(X,Y)),dif(X,Y).












