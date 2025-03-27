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
reverso :: [a] -> [a]   
reverso = foldl(\x y -> y : x) []

-- 07 

replica 0 _ = []
replica n x = x : replica (n-1) x

-- 08 
{-. Escreva uma função que retorne os n primeiros elementos de uma lista. Ex:
Primeiros 2 [10,33,44,61,99] = [10,33]-}

primeiros 0 _ = []
primeiros n (x:xs) = x : primeiros (n-1) xs

-- 09
ignora 0 xs = xs 
ignora n (x:xs) = ignora (n-1) xs
 

-- 10 
{-10. Os seguintes comandos são equivalentes?
(a) fmap (+2) Just 3
(b) (+2) <*> Just 3

Não, fmap é utilizado para aplicar uma função em um valor especifico. <*> Possíbilita relizar a aplicação de diversas funções em uma lista, retornando o valor separadamente de cada operador-} 