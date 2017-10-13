es_un_pais(argentina).
es_un_pais(chile).% para comentarios
es_un_pais(brasil).
es_un_pais(venezuela).
es_un_pais(suriname).
es_un_pais(colombia).
es_un_pais(ecuador).
es_un_pais(peru).
es_un_pais(bolivia).
es_un_pais(guyana).
limita_con(argentina,chile).
limita_con(argentina,brasil).
limita_con(bolivia,peru).
limita_con(venezuela,guyana).
limita_con(colombia,venezuela).
limita_con(argentina,uruguay).
es_una_provincia(uruguay).
es_una_provincia(santafe).
es_una_provincia(bsas).
es_una_provincia(tucuman).
es_una_provincia(formosa).
es_una_provincia(chaco).
es_una_provincia(misiones).
son_limitrofes(X,Y):-limita_con(X,Y);limita_con(Y,X).
son_translimitrofes(X,Y):-son_limitrofes(X,Z),son_limitrofes(Z,Y), not(son_limitrofes(X,Y)),dif(X,Y).












