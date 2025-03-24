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

    
--4

data Forma =  Retangulo Float Float 
area :: Forma -> Float
area(Retangulo x1 y1) = x1 * y1

areaRet = do
    putStrLn "Qual a base do retangulo?"
    msg <- getLine
    let msg1 = read msg :: Float 
    putStrLn "Digite a altura do retangulo?"
    des <- getLine
    let altura = read des :: Float 
    let resultado = area (Retangulo msg1 altura)
    putStrLn $ "Área: " ++ show resultado

    
-- Procurar como converter o número