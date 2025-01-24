from playlist import *
from catalogo import *

def mus24():
    pls = []
    catalog1 = Catalogo()
    exec = 1
    print('****Bem-vindo ao Mus24****')
    while exec == 1:
        print('\n')
        print('1 - Exibir catálogo.')
        print('2 - Exibir playlist\'s.')
        print('3 - Criar playlist.')
        print('4 - Adicionar música na playlist.')
        print('5 - Exibir playlist.')
        print('6 - Procurar música.')
        print('7 - Procurar artista.')
        print('8 - Reproduzir música.')
        print('9 - Reproduzir playlist.')
        print('10 - Finalizar programa.')

        opt = int(input('\nDigite o valor da ação: '))
        if opt == 1:
            catalog1.exibeCatalogo()

        if opt == 2:
            if not pls:
                print('\nNenhuma playlist encontrada.\n')
            else:
                print('\nPlaylists:')
                for nome in pls:
                    print(f'-{nome.nome}')

        if opt == 3:
            pl1 = input('\nQual o nome da playlist deseja criar? ')
            x = Playlist(pl1)
            pls.append(x)

        if opt == 4:
            ms = input('Qual nome da música deseja adicionar? ')
            pl2 = input('Qual nome da playlist deseja adicionar? ')
            adic = 0
            for y in pls:
                if pl2 in y.nome:
                    for x in catalog1.musicas:
                        if ms in x.nome:
                            y.addMusica(x)
                            print('\nMúsica adicionada à playlist! ')
                            adic = 1
                            break

                    print('\nMúsica não encontrada no catálogo. ') if adic != 1 else 0
                else:
                    print('\nPlaylist não encontrada. ')

        if opt == 5:
            adic1 = 0
            pl3 = input('\nQual nome da playlist deseja exibir? ')
            for y in pls:
                if pl3 in y.nome:
                    for mus in y.musicas:
                        print(f'Nome: {mus.nome} - Artista: {mus.artista} - Duração: {mus.duracao}.')
                        adic1 = 1

            print('Playlist não encontrada.') if adic1 != 1 else 0

        if opt == 6:
            msct = (input('\nQual música que deseja buscar: '))
            catalog1.procuraMusica(msct)

        if opt == 7:
            arct = (input('\nArtista que deseja procurar: '))
            catalog1.exibeArtista(arct)

        if opt == 8:
            arct = (input('\nDigite o nome da música para reprodução: '))
            catalog1.tocarMusica(arct)

        if opt == 9:
            arct = (input('\nDigite o nome da playlist para reprodução: '))
            verf = 0
            for plsRep in pls:
                if arct in plsRep.nome:
                    print(f'Iniciando playlist {arct}...\n')
                    verf = 1
            print('\nPlaylist não encontrada.') if verf != 1 else 0

        if opt == 10:
            exec = 7
        import time
        time.sleep(1)