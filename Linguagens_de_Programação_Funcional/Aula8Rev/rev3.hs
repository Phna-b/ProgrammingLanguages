-- 01 

import Data.List
ordena xs = sort xs

-- 02 
{-
2. Diga por que o código abaixo é inválido:
    [[1,2],3,[4,5]]

O código está declarando uma lista com os tipos Lista, int e Lista. Dessa forma está inválido, isso ocorre pois o tipo lista só pode armazenar dados de um mesmo tipo.

-}

-- 03

quintou xs 
    | length xs >= 5 =  head (tail (tail (tail (tail xs))))
    | otherwise = head(xs)


-- 04 

data Forma = Retangulo Float Float
area(Retangulo x y) = x * y

areaRet = do
    putStrLn "Qual a base do retangulo?"
    msg <- getLine
    let msg1 = read msg :: Float 
    putStrLn "Digite a altura do retangulo?"
    des <- getLine
    let altura = read des :: Float 
    let resultado = area (Retangulo msg1 altura)
    putStrLn $ "Área: " ++ show resultado

-- 05

func xs = map(\x -> x * 2 + 2) xs

-- 06

 
 