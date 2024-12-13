p([]).
p([X|T]):- (X mod 2 =:= 0) -> write(X), p(T); p(T).