p(a).
p(e).
q(e).
q(a).
r(bb).
k(a).
k(e).


s(X):- p(X),k(X),!,q(X).  
s(X):- r(X).