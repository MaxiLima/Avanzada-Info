transporte(roma,20).
transporte(londres,30).
transporte(tunez,10).

alojamiento(roma,hotel,50).
alojamiento(roma,hostal,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostal,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostal,20).
alojamiento(tunez,camping,5).

multiplicar(P,X,Y):- P is X * Y.
sumar(S,X,Y):- S is X+Y.
menor(X,Y):- X<Y.

% Expresar la relaci�n viaje(C,S,H,P) que se interpreta por:
% el viaje a la ciudad C durante S semanas con estancia en H
% cuesta P pesos. Completar con viajeeconomico(C,S,H,P,Pmax) que expresa
% que el costo P es menor que Pmax pesos.
%C: Ciudad
%S: Semanas
%H: Tipo de Hotel
%P: Precio
% =< ; >= ; ==
viaje(C,S,H,P):-  transporte(C,PT) , alojamiento(C,H,PA), multiplicar(M,PA,S), sumar(P,PT,M).
viaje_economico(C,S,H,P,Pmax):-  viaje(C,S,H,P) ,
                                 menor(Pmax,P).
