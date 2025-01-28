/* Liste músicas com suas características: gênero, artista e década. */
musica(mus1,ponk,s,80).
musica(mus2,ponk,s,90).
musica(lacrimosa,class,mozart,20).
musica(requiem,class,mozart,40).
musica(hungUp,apop,madona,70).
musica(popular,apop,madona,90).
musica(thunderstruck, rock, acdc, 80).
musica(backInBlack, rock, acdc, 80).
musica(smoothCriminal, pop, michaelJackson, 80).
musica(bad, pop, michaelJackson, 80).
musica(letItBe, rock, beatles, 70).
musica(yesterday, rock, beatles, 60).
musica(supermassiveBlackHole, altRock, muse, 2000).
musica(starlight, altRock, muse, 2000).
musica(paperPlanes, indie, mia, 2000).
musica(bambooBanga, indie, mia, 2000).
musica(houseOfTheRisingSun, folk, animals, 60).
musica(scarboroughFair, folk, simonAndGarfunkel, 60).
musica(somebodyToLove, rock, queen, 70).
musica(anotherOneBitesTheDust, rock, queen, 80).

/*Desenvolva uma regra para recomendar músicas baseadas no gênero preferido do usuário.*/

recomendar_gen(Genero, Titulo) :-musica(Titulo, Genero, _, _).

/*Desenvolva uma regra para recomendar músicas de uma década específica.*/
recomendar_dec(Decada, Titulo):-musica(Titulo,_,_,Decada).

/*- Crie uma regra que recomenda músicas para um usuário com base em seus gêneros favoritos.*/
recomendar_favoritos(GenerosFavoritos, Titulo) :- member(Genero, GenerosFavoritos), % Verifica se o gênero está na lista de favoritos
    musica(Titulo, Genero, _, _).     % Encontra músicas com o gênero correspondente. 

/* Escreva consultas que retornem músicas: */

        /*a. Do gênero preferido do usuário.*/
            /* recomendar_por_generos_favoritos([ponk, class], Titulo). */
        /*b. Que sejam de uma década específica.*/
            /* recomendar_dec(60,Titulo). */
        /*c. Que combinem artista e gênero. */  
            /* musica(Titulo,altRock,muse,Decada). */