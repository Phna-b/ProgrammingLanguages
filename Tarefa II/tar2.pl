fat(0,1).
fat(X,Y) :- (X > 0),X1 is X-1,fat(X1,W), Y is X*W.