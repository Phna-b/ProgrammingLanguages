/* Questão 01 */

mae(sue, nancy).
mae(sue, jeff).
mae(mary, sue).
mae(mary, bill).
pai(bill, ted).


/* Verifica se são irmãos, se possueirem a mesma mãe ou pai */
irmao(X, Y) :- mae(M, X), mae(M, Y), X \= Y.
irmao(X, Y) :- pai(P, X), pai(P, Y), X \= Y.

/*Adicionei o fato pai(cris, bill) para validar, retorna quem é o avó do Ted*/
avo(Quem, ted) :- pai(Quem, Bill), pai(Bill, ted).

/* Regra para verificar se duas pessoas são primos, verifica a relação entre os valores passados. Considerando por exemplo o caso de ted e nancy-jeff */
primo(G, T) :-
    (irmao(P1, P2), pai(P1, G), pai(P2, T));
    (irmao(PM1, PM2), mae(PM1, G), pai(PM2, T));   
    (irmao(PM11, PM22), pai(PM11, G), mae(PM22, T)); 
    (irmao(M1, M2), mae(M1, G), mae(M2, T)).    

/* Questão 02 */

/*Caso base esse elemento é o máximo */
maximo([X], X).

/*Se X é maior ou igual a Y, descarta Y e continua com a validação usando [X|Z] */
maximo([X, Y|Z], ValMax) :- X >= Y, maximo([X|Z], ValMax).

/*Se Y é maior ou igual a X, descarta X e continua com a validação usando  [Y|Z] */
maximo([X, Y|Z], ValMax) :- Y > X, maximo([Y|Z], ValMax).


/*Segue a mesma lógica, porem invertida.*/
minimo([X], X).
minimo([X, Y|Z], ValMin) :- X =< Y, minimo([X|Z], ValMin).
minimo([X, Y|Z], ValMin) :- Y < X,minimo([Y|Z], ValMin).


/* Questão 03 */

remove_duplicatas([], []).
remove_duplicatas([H|T], [H|T1]) :-
    \+ member(H, T),
    remove_duplicatas(T, T1).
remove_duplicatas([H|T], T1) :-
    member(H, T),
    remove_duplicatas(T, T1).