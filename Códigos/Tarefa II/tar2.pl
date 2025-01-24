musica(mus1,ponk,s,80).
musica(mus2,ponk,s,90).
musica(lacrimosa,class,mozart,20).
musica(requiem,class,mozart,40).
musica(hungUp,apop,madona,70).
musica(popular,apop,madona,90).

recomendar_gen(Genero, Titulo) :-musica(Titulo, Genero, _, _).

recomendar_dec(Decada, Titulo):-musica(Titulo,_,_,Decada).