%1
sumar([],0).
 sumar([X|Ss],S) :-
    sumar(Ss,S2),
    S is S2+X.

% L=[5,2,4], sumar(L,R). en consola
size([],0).
size([_|Y], N):-size(Y, N1), N is N1+1.

elCondicional :-

       size//2=0 ->
        write('¡Par')
        ;
        write('Impar').

% size([1,3,4],Tamaño). elCondicional. en consola
%2
subset(_, []).
subset([X|L], [A|NTail]):-
    member(A,[X|L]),
    subset(L, NTail),
    not(member(A, NTail)).
  % subset([1,2,3], E). en consola

%3
rotar(X,X,0).
rotar([X|Y], L, N):-
    N1 is N-1,
    append(Y,[X],Y1),
    rotar(Y1, L, N1).
%rotar([1,2,3,4], L, 2). en consola
%





