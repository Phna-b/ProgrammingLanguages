musica(mus1,ponk,s,80).
musica(mus2,ponk,s,90).
musica(lacrimosa,class,mozart,20).
musica(requiem,class,mozart,40).
musica(hungUp,apop,madona,70).
musica(popular,apop,madona,90).

gen_fav(A):- musica(Nome,A,Artista,Decada), write('Artista:'), write(Artista), write(' Nome:'), write(Nome), write(' Decada:'), write(Decada),!.

dec(B):- musica(Nome,Gen,Artista,B), write('Artista:'), write(Artista), write(' Nome:'), write(Nome), write(' Genero:'), write(Gen),!.


print(A):-forall(musica(X,A,Y,Z), writeln(X,A,Y,Z)).