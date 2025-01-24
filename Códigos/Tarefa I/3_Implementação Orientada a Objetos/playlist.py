from music import Musica
class Playlist:
  def __init__(self, nome):
    self.nome = nome
    self.musicas = []

  def addMusica(self, musica):
    if isinstance(musica, Musica):
      self.musicas.append(musica)
    else:
      print("Erro: O objeto adicionado não é uma instância da classe Musica.")

  def exibePlaylist(self):
    for musica in self.musicas:
      print(f'Nome: {musica.nome} - Artista: {musica.artista} - Duração: {musica.duracao}.')