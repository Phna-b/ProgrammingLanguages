mae(mary,ted).
mae(mary,tom).

pai(ted,mateus).
pai(mateus,mary).
pai(tom,ana).
pai(mateus,antonio).

irmao(Pessoa1,Pessoa2):- mae(X,Pessoa1), mae(X,Pessoa2), Pessoa1\=Pessoa2.

avo(Pessoa1,Pessoa2):- pai(Pessoa1,X),pai(X,Pessoa2), Pessoa1 \= Pessoa2.