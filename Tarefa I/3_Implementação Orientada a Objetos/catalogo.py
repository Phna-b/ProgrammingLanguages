from music import *
class Catalogo:
  def __init__(self):
    self.nome = 'Catalogo'
    self.musicas = []
    self.musicas.append(Musica('Madri','Fernando & Sorocaba', '4:07'))
    self.musicas.append(Musica('Vish', 'Fernando & Sorocaba', '2:58'))
    self.musicas.append(Musica('Tô passando mal', 'Fernando & Sorocaba', '2:58'))
    self.musicas.append(Musica('Terra de amor', 'Fernando & Sorocaba', '2:46'))
    self.musicas.append(Musica('Procurando amor', 'Fernando & Sorocaba', '3:12'))
    self.musicas.append(Musica('Seventeen', 'Ladytron', '4:37'))
    
    
  def exibeCatalogo(self):
    print(f'\nCatálogo completo:')
    for musica in self.musicas:
      print(f'Nome: {musica.nome} - Artista: {musica.artista} - Duração: {musica.duracao}.')


  def exibeArtista(self, nomeArt):
    print(f'\nCatalogo do artista \'{nomeArt}\':')
    for musica in self.musicas:
      print(f'Nome: {musica.nome} - Artista: {musica.artista} - Duração: {musica.duracao}.') if(nomeArt in musica.artista) else 0

  def procuraMusica(self, music):
    print(f'\nResultados para \'{music}\':')
    for musica in self.musicas:
        print(f'Nome: {musica.nome} - Artista: {musica.artista} - Duração: {musica.duracao}.') if(music in musica.nome) else 0

  def tocarMusica(self, music):
    for musica in self.musicas:
        print(f'Tocando - Nome: {musica.nome} - Artista: {musica.artista} - Duração: {musica.duracao}.') if(music in musica.nome) else 0