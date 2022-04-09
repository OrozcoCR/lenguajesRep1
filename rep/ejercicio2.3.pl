

entrada(paella).
entrada(gazpacho).
entrada(consume).
carne(fileteCerdo).
carne(polloAsado).
pescado(trucha).
pescado(bacalao).
postre(flan).
postre(nueces).
postre(naranja).
calorias(paella,200).
calorias(gazpacho,150).
calorias(consume,300).
calorias(fileteCerdo,400).
calorias(polloAsado,280).
calorias(trucha,160).
calorias(bacalao,300).
calorias(flan,200).
calorias(nueces,500).
calorias(naranja,50).


plato_principal(X):-
    carne(X).

plato_principal(X):-
    pescado(X).

comidaCompleta(X,Y,Z):-
    entrada(X),
    plato_principal(Y),
    postre(Z).

caloriesAmount(Comida1,Comida2,Comida3,Valor):-
    calorias(Comida1,Calorias1),
    calorias(Comida2,Calorias2),
    calorias(Comida3,Calorias3),
    Valor is Calorias1+Calorias2+Calorias3,
    comidaCompleta(Comida1,Comida2,Comida3).

maximoCal(Maximo,Comida1,Comida2,Comida3):-
    caloriesAmount(Comida1,Comida2,Comida3,Valor),
    Valor<Maximo.

% maximoCal(2000,gazpacho,polloAsado,flan). en consola
