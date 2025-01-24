playlists = {}
def tocarMusica(catalogo, titulo):
    for musica in catalogo:
        if musica["nome"] == titulo:
            print(f"Tocando: {musica['nome']} - Artista: {musica['artista']} Duração: {musica['duracao']} minutos")
            return
    print("Música não encontrada no catálogo.")
def criaPlaylist(nome):
    if nome not in playlists:
        playlists[nome] = []
        print(f"Playlist '{nome}' criada.")
    else:
        print(f"A playlist '{nome}' já existe.")

def addMusicaPlaylist(nomePlaylist, titulo_musica):
    for musica in catalogo:
        if musica["nome"] == titulo_musica:
            if nomePlaylist in playlists:
                playlists[nomePlaylist].append(musica)
                print(f"Música '{titulo_musica}' adicionada à playlist '{nomePlaylist}'.")
                return
            else:
                print(f"A playlist '{nomePlaylist}' não existe.")
                return
    print(f"Música '{titulo_musica}' não encontrada no catálogo.")


def exbibePlaylist(nome):
    if nome in playlists:
        print(f"\nPlaylist: {nome}")
        for musica in playlists[nome]:
            print(f" - {musica['nome']} - {musica['artista']} - {musica['duracao']} minutos;")
    else:
        print(f"A playlist '{nome}' não existe.")


def exibeCatalogo(catalogo):
    print("Músicas disponíveis no catálogo:")
    for musica in catalogo:
        print(f"Nome: {musica['nome']} - Artista: {musica['artista']} Duração: {musica['duracao']} minutos")

def procuraMusica(music, catalogo):
    print(f'\nResultados para \'{music}\':')
    for musica in catalogo:
        if music == musica['nome']:
            print(f"Nome: {musica['nome']} - Artista: {musica['artista']} Duração: {musica['duracao']} minutos")


catalogo = [
    {'nome':'Madri', 'artista':'Fernando & Sorocaba','duracao':'4:07'},
    {'nome':'Vish', 'artista':'Fernando & Sorocaba', 'duracao':'2:58'},
    {'nome':'Tô passando mal', 'artista':'Fernando & Sorocaba', 'duracao':'2:58'},
    {'nome':'Terra de amor', 'artista':'Fernando & Sorocaba', 'duracao':'2:46'},
    {'nome':'Procurando amor', 'artista':'Fernando & Sorocaba', 'duracao':'3:12'},
    {'nome':'Seventeen', 'artista':'Ladytron', 'duracao':'4:37'}
]


print('****Bem-vindo ao Mus24 - beta ****')
exec = 1
while exec == 1:
    print('\n')
    print('1 - Exibir catálogo.')
    print('2 - Criar playlist.')
    print('3 - Adicionar música na playlist.')
    print('4 - Exibir playlist.')
    print('5 - Procurar música.')
    print('6 - Reproduzir música.')
    print('7 - Reproduzir playlist.')
    print('8 - Finalizar programa.')

    opt = int(input('\nDigite o valor da ação: '))
    if opt == 1:
        exibeCatalogo(catalogo)

    if opt == 2:
        pl2 = input('\nDigite o nome da playlist que deseja criar? ')
        criaPlaylist(pl2)

    if opt == 3:
        ms = input('Qual nome da música deseja adicionar? ')
        pl2 = input('Qual nome da playlist deseja adicionar? ')
        addMusicaPlaylist(pl2, ms)

    if opt == 4:
        adic1 = 0
        pl3 = input('\nQual nome da playlist deseja exibir? ')
        exbibePlaylist(pl3)

    if opt == 5:
        msct = (input('\nQual música que deseja buscar: '))
        procuraMusica(msct, catalogo)

    if opt == 6:
        arct = (input('\nDigite o nome da música para reprodução: '))
        tocarMusica(catalogo, arct)

    if opt == 7:
        arct = (input('\nDigite o nome da playlist para reprodução: '))
        print('Reproduzindo:')
        exbibePlaylist(arct)

    if opt == 8:
        exec = 7

    import time
    time.sleep(1)