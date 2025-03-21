-- 1
import Data.List
ordenar :: (Ord a) => [a] -> [a]
ordenar = sort

--2 

--Uma lista só possui um único tipo em sua composição, o código possui listas e inteiros. O exemplo correto seira [(1,2),(4,5)].

--3 
mysumP [a,b] = b
mysumP (x:xs) = mysumP xs 
pega x = mysumP(take 5 x) 

    