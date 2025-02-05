-- Retorna o maior número entre 3 (max3), max3ass é generico então aceita qualquer tipo e max3S aceita somente sting
--Exemplo de entrada  max3(3,43,10)
max3:: (Int, Int, Int) -> Int
max3(x,y,z) =
    if   x>=y && x>=z then x
    else if y>=x && y>=z then y
    else z

--Exemplo de entrada max3Ass 1 2 3
max3Ass x y z
    | x>=y && x>=z = x
    | y>=x && y>=z = y
    | otherwise = z



--Exemplo de entrada: max3S("xa","xb","zb")
max3S:: (String, String, String) -> String
max3S(x,y,z) =
    if   x>=y && x>=z then x
    else if y>=x && y>=z then y
    else z


