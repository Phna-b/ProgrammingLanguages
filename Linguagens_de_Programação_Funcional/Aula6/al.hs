data Forma = Circulo Float Float Float | Retangulo Float Float Float Float
superficie::Forma -> Float
superficie(Circulo _ _ r) = pi * r ^ 2
superficie(Retangulo x1 y1 x2 y2) = (abs $ x2 - 1) * (abs $ y2 - y1) 

--superficie $ Circulo 22.22 22.3 22.3 