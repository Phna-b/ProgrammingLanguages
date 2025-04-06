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
primo(G, Y) :-
    (irmao(P1, P2), pai(P1, G), pai(P2, Y));
    (irmao(PM1, PM2), mae(PM1, G), pai(PM2, Y));   
    (irmao(PM11, PM22), pai(PM11, G), mae(PM22, Y)); 
    (irmao(M1, M2), mae(M1, G), mae(M2, Y)).    

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

/*Utilizei a função member para facilitar o desenvolvimento das proximas questões*/

/* Questão 03 */

remove_duplicatas([], []).
/* Verifica se X não está presente em Y e continua o processamento da cauda */
remove_duplicatas([X|Y], [X|Y1]) :- \+ member(X, Y), remove_duplicatas(Y, Y1).
/* Verifica se X está presente em Y e continua o processamento da cauda */
remove_duplicatas([X|Y], Y1) :- member(X, Y), remove_duplicatas(Y, Y1).


/* Questão 04 */
 
intersection(L, L2, R) :- intersectionComplementar(L, L2, [], R).
/* Retorno final */
intersectionComplementar([], _, Acumula, Acumula). 
/* X está em L2 mas não está no acumulador. */
intersectionComplementar([X|Y], L2, Acumula, R) :- member(X, L2), \+ member(X, Acumula), intersectionComplementar(Y, L2, [X|Acumula], R).
/*Lida caso já tenha sido adicionado e esteja presente nas duas listas*/
intersectionComplementar([X|Y], L2, Acumula, R) :- member(X, L2), member(X, Acumula), intersectionComplementar(Y, L2, Acumula, R). 
/*Não está presente na lista 2*/
intersectionComplementar([X|Y], L2, Acumula, R) :- \+ member(X, L2), intersectionComplementar(Y, L2, Acumula, R).


/* Questão 05 */

/*Utilizei o código da questão 03 para desenvolver a solução, juntando as listas e removendo os duplicados*/
uniao(X, Y, R) :- append(X, Y, Conc), remove_duplicatas(Conc, R).
