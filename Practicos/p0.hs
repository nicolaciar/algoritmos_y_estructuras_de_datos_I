-- Laboratorio 1

esCero :: Int -> Bool
esCero x = (x == 0)

esPositivo :: Int -> Bool
esPositivo x = (x > 0)

esVocal :: Char -> Bool
esVocal l | l == 'a' = True
          | l == 'e' = True
          | l == 'i' = True
          | l == 'o' = True
          | l == 'u' = True
          | otherwise = False

valorAbsoluto :: Int -> Int
valorAbsoluto x | (x>0 || x==0) = x
                | x<0 = -x

--Laboratorio 2

todosPositivos :: [Int] -> Bool
todosPositivos [] = True
todosPositivos (x:xs) = (x>0) && (todosPositivos xs)

hayPares :: [Int] -> Bool
hayPares [] = False
hayPares (x:xs) = (x `mod` 2 == 0) || hayPares xs

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x:xs) = (x == True) && paratodo xs

existe :: [Bool] -> Bool
existe [] = False
existe (x:xs) = (x == True) || existe xs


-- Laboratorio 3

-- 3a) Expresion: ⟨ ∀i : 0 ≤ i < #xs : xs.i > 0 ⟩
--     Variable libre: xs (i cuantificada)
--     Tipo: xs :: [Int]
--     Implementación corresponde a todosPositivos
--
-- 3b) Expresión: ⟨ ∃i : 0 ≤ i < #xs : xs.i = x ⟩
--     Variables libres: x, xs. i cuantificada
--     Tipos: xs::[Int], x::Int
--     Implementación:
existeEnLista :: Int -> [Int] -> Bool
existeEnLista _ [] = False
existeEnLista x (y:ys) = (x==y) || existeEnLista x ys

-- 3d) Expresión: ⟨ ∀i : 0 ≤ i < #xs − 1 : xs.i = xs.(i + 1) ⟩
--     Variable libre: xs, i cuantificada
--     Tipo: xs :: [Int]
--     Implementación:
todosIguales :: [Int] -> Bool
todosIguales [] = True
todosIguales [_] = True
todosIguales (x:y:xs) = (x==y) && todosIguales (y:xs)


-- Figuras

data Color = Rojo | Amarillo | Azul | Verde 
                        deriving (Show, Eq)
data Forma = Triangulo | Cuadrado | Rombo | Circulo
                        deriving (Show, Eq)
type Figura = (Forma, Color, Int)


--- Laboratorio 4

rojo :: Figura -> Bool
rojo (_,c,_) = c == Rojo

amarillo :: Figura -> Bool
amarillo (_, c, _) = c == Amarillo

azul :: Figura -> Bool
azul (_, c, _) = c == Azul

verde :: Figura -> Bool
verde (_,c,_) = c==Verde

tam :: Figura -> Int
tam (_,_,c) = c

triangulo :: Figura -> Bool
triangulo (c,_,_) = c==Triangulo

cuadrado :: Figura -> Bool
cuadrado (c,_,_) = c==Cuadrado

rombo :: Figura -> Bool
rombo (c,_,_) = c==Rombo

circulo :: Figura -> Bool
circulo (c,_,_) = c==Circulo


-- Laboratorio 5
xs1, xs2, xs3 :: [Figura]
xs1 = [(Circulo, Azul, 40), (Rombo, Rojo, 10)]
xs2 = [(Circulo, Rojo, 4), (Rombo, Rojo, 10)]
xs3 = [(Triangulo, Verde, 10)]  -- Listas a evaluar

todasRojas :: [Figura] -> Bool
todasRojas [] = True
todasRojas (x:xs) = rojo x && todasRojas xs

todasRombo :: [Figura] -> Bool
todasRombo [] = True
todasRombo (x:xs) = rombo x && todasRombo xs
